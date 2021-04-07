defmodule Aula1Test do
  use ExUnit.Case
  doctest Aula1

  test "greets the world" do
    assert Aula1.hello() == :world
  end
end
