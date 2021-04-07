defmodule CountWords do
  @vsn 1.0

  def count(file_name) do
    file_name
      |> FileReader.parse_data
      |> Enum.sort
      |> Enum.frequencies
  end

end
