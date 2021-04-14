defmodule PfuWeb.UserController do
  use PfuWeb, :controller
  alias Pfu.Repo
  alias Pfu.Usuario

  def index(conn, _params) do
    usuarios = Repo.tudo(Usuario)
    render conn, "index.html", users: usuarios
  end

  def show(conn, %{"id" => id}) do
    usuario = Repo.pega_by_id(Usuario, id)
    render conn, "show.html", user: usuario
  end

end
