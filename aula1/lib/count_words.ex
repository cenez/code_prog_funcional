defmodule CountWords do
  @vsn 1.0

  defp remove_prefix(str) when is_binary(str), do: str |> String.replace_prefix("\uFEFF", "")

  defp parse_data(file_name) do
    [h | t] = file_name
              |> File.read!
              |> String.split(~r{\s}, trim: true)
    [remove_prefix(h)] ++ t
  end

  def count(file_name) do
    file_name
      |> parse_data
      |> Enum.sort
      |> Enum.frequencies
  end

  def start(_type, _args) do
    IO.puts "Iniciando..."
    file_name = "/home/cenez/workspace/elixir/code_prog_funcional/words.txt"
    file_name |> count() |> IO.inspect
    {:ok, self()}
  end

end
