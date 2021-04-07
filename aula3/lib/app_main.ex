defmodule AppMain do
  def start(_type, _args) do
    IO.inspect("Iniciando ....")
    {:ok, self()}
  end
end
