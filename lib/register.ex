defmodule Kitchen.Register do
  alias Kitchen.Fields

  defstruct name: "", flatname: "", url: "", fields: %{}, db: nil

  def create(url) do
    u = url |> URI.parse
    name = u.host
    |> String.split(".")
    |> hd

    %__MODULE__{name: name, flatname: String.replace(name, "-", "_"), url: url, fields: get_fields(name), db: get_db}
  end

  def load(register, data) do
    data
    |> Enum.map(fn {_, v} ->
      load_entry(register, v)
    end)
  end

  def load_entry(register, data_dict) do
    # Delete entry-number before insertion ... we don't really care
    # Change register.name to id
    id  = String.to_integer(data_dict[register.name])
    data_dict = data_dict
    |> Map.delete(register.name)
    |> Map.delete("entry-number")
    |> Map.put("id", id )
    |> Enum.map(fn {k, v} ->
        type_f = case k do
          "entry-timestamp" -> "datetime"
          _ -> register.fields[k]
        end
        {String.replace(k, "-", "_"), type_field(type_f, k, v) }
    end)
    |> Enum.into(%{})

    register
    |> delete_entry(data_dict)
    |> insert_entry(id, data_dict)
    |> update_search(id)

    1
  end

  defp update_search(register, id) do
    searchable = searchable_fields(register)
    q = "UPDATE #{register.flatname} set search = to_tsvector(#{searchable}) WHERE id=#{id};"
    {:ok, _data} =  Postgrex.query(register.db, q, [])
    register
  end

  defp delete_entry(register, %{"id"=> id}) do
    q = "DELETE FROM #{register.flatname} WHERE id=#{id}"
    {:ok, _data} =  Postgrex.query(register.db, q, [])
    register
  end

  defp insert_entry(register, id, data_dict) do

    fieldnames = Map.keys(data_dict)
    |> Enum.filter( fn f -> f != register.name end)
    |> Enum.map( fn f -> String.replace(f, "-", "_") end)

    placeholders = fieldnames
    |> Enum.with_index(1)
    |> Enum.map( fn {f, p} ->
      "$#{p}"
    end)

    q = """
    INSERT INTO #{register.flatname}(#{Enum.join(fieldnames, ", ")})
    VALUES(#{Enum.join(placeholders, ",")})
    """

    # item-hash

    args = fieldnames
    |> Enum.map(fn f->

      data_dict
      |> Map.get(f)
      |> normalise_arg
    end)

    {:ok, _data} =  Postgrex.query(register.db, q, args)
    register
  end

  defp normalise_arg(a) when is_list(a) do
    Enum.join(a, ",")
  end
  defp normalise_arg(a), do: a

  defp type_field("varchar" <> _rest, _k, val), do: val
  defp type_field("timestamp" <> _rest, _k, ""), do: nil
  defp type_field("datetime", "entry-timestamp",  val) do
    # We have to use Naive because we can't parse with the TZ with DateTime
    {:ok, dt} = NaiveDateTime.from_iso8601(val)
    %Postgrex.Timestamp{year: dt.year, month: dt.month, day: dt.day}
  end

  defp type_field("timestamp" <> _rest, _k, val) do
    {:ok, dt} = Date.from_iso8601(val)
    %Postgrex.Timestamp{year: dt.year, month: dt.month, day: dt.day}
  end
  defp type_field("integer", _k, val) when is_integer(val), do: val
  defp type_field("integer", _k,  val), do: String.to_integer(val)
  defp type_field(nil, "id", val), do: val
  defp type_field(nil, "item-hash",  val), do: val

  defp get_db do
    config = Application.get_env(:kitchen, :connection)
    {:ok, pid} = Postgrex.start_link(database: config[:database],
      username: config[:username],
      password: config[:password],
      hostname: config[:hostname])
    pid
  end

  defp get_fields(name) do
    resp = "http://register.alpha.openregister.org/record/#{name}.json"
    |> HTTPoison.get!

    Map.get(Poison.decode!(resp.body), "fields")
    |> Enum.map(fn field->
      [{field, info}] = Fields.lookup(field)
      {field, translate_type(Map.get(info, "datatype"))}
    end)
    |> Enum.into(%{})
  end

  defp translate_type("datetime"), do: "timestamp"
  defp translate_type("integer"), do: "integer"
  defp translate_type("url"), do: "varchar(512)"
  defp translate_type(_), do: "varchar(255)"

  defp searchable_fields(register) do
    register.fields
    |> Enum.filter(fn {_, v} ->
      String.match?(v, ~r/varchar*/)
    end)
    |> Enum.map(fn {k, _} -> "coalesce(" <> String.replace(k, "-", "_") <> ")" end)
    |> Enum.join( "|| '' || ")
  end

end