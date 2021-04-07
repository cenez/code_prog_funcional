defmodule FileReader do

  def parse_data(file_name) do
    file_name
      |> File.read!
      |> String.split(~r{\s}, trim: true)
  end
end
