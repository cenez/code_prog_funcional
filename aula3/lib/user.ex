defmodule User do
  use Schema
  esquema "users" do
    :nome
    :username
    :password
    :age
    :email
  end

  def make_chage(user, attrs) do
    [_ | keys] = Map.keys(%User{})
    attrs = attrs |> Map.take(keys)
    user |> Map.merge(attrs, fn _k, _v1, v2 -> v2 end)
  end

  def changeset(user, attrs, hash: true) do
    user = make_chage(user, attrs)
    put_password_hash(user)
  end

  def changeset(user, attrs, hash: false) do
    make_chage(user, attrs)
  end
  def put_password_hash(user) do
    user
      |> Map.replace(:password, Comeonin.Bcrypt.hashpwsalt(user.password))
  end
end
