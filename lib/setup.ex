defmodule Kitchen.Setup do
  alias Kitchen.Register
  alias Kitchen.Fields

  def init_register(register_url) do
    IO.puts "Initialising register from #{register_url}"

    # Make sure we have fields already stored in ETS
    :ets.new(:fields, [:set, :protected, :named_table])
    Fields.get_fields
    |> Enum.map(fn {k, v} ->
      :ets.insert(:fields, {k, v})
    end)

    register = Register.create(register_url)

    IO.puts "Creating the table "
    {:ok, _data} =  Postgrex.query(register.db, create_sql(register), [])
    Postgrex.query(register.db, make_searchable(register), [])
    IO.puts "Table created"

    register
  end

  defp create_sql(register) do
    prelude = """
    CREATE TABLE IF NOT EXISTS #{register.flatname} (
        search tsvector,
        id integer CONSTRAINT pk_#{register.flatname}_id PRIMARY KEY,
        entry_timestamp timestamp with time zone,
        item_hash varchar(255),
    """

    body =  register.fields
    |> Map.delete(register.name)
    |> Enum.map(fn {k, v} ->
        fieldname = String.replace(k, "-", "_")
        "\n    #{fieldname} #{v}"
    end)
    |> Enum.filter(fn v-> v end)

    postscript = ");"
    prelude <> Enum.join(body, ",") <> postscript
  end

  defp make_searchable(register) do
    """
    CREATE INDEX search_#{register.flatname}_idx ON #{register.flatname} USING gin(search);
    """
  end


end