defmodule Aula2 do
  def start(_type, _args) do
    IO.puts "Iniciando..."
    file_name = "/home/cenez/workspace/unifor/pf/elixir/words.txt"
    file_name |> CountWords.count() |> IO.inspect
    {:ok, self()}
  end
end
