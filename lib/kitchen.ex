defmodule Kitchen do
  alias Kitchen.Setup
  alias Kitchen.Register

  def main(args) do
    args |> parse_args |> process
  end

  def process([]), do: usage
  def process(options) do
    HTTPoison.start
    Application.start(:postgrex)

    register = options[:import]
    |> Setup.init_register

    source_url = options[:import]
    |> URI.merge("/records.json")
    |> URI.to_string

    # Keep loading data until we get a 404 which means we've run past the end of
    # the pagination
    get_page(register, source_url, 1)
  end

  # Exit the recursion
  def get_page(register, source_url, -1), do: nil
  def get_page(register, source_url, page ) do
    res = HTTPoison.get!(source_url <> "?page-index=#{page}&page-size=1000")

    case res.status_code do
      404 -> nil
      _ ->
        IO.puts "Getting page #{page}"
        source =Poison.decode!(res.body)
        counter = Register.load(register, source)
        IO.puts "Processed #{Enum.sum(counter)} items on page #{page}"

        next_page = get_next_page(page, res.status_code)
        get_page(register, source_url, next_page)
      end
  end

  def get_next_page(page, 200), do: page + 1
  def get_next_page(page, 404), do: -1



  defp usage do
    IO.puts """

      Usage: ./kitchen --import NAME

     NAME - The name of the register to sync to a local database
    """
  end

 defp parse_args(args) do
    {options, _, _} = OptionParser.parse(args,
      switches: [import: :string]
    )
    options
  end

end
