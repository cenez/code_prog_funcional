defmodule PfuWeb.UserView do
  use PfuWeb, :view
  alias Pfu.Usuario

  def first_name(%Usuario{name: name}) do
    name |> String.split(" ") |> Enum.at(0)
  end

end
