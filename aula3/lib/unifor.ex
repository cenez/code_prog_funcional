defmodule Unifor do

  def processar(true, do: expression), do: String.reverse(expression)
  def processar(false, do: expression), do: expression

  @spec list_to_string([any], trim: boolean()):: binary() when any: binary()
  def list_to_string(lista, trim: trim) do
    as = case trim do
      true -> for i<-lista, do: String.trim(i)
      _ -> lista
    end
    as |> String.Chars.to_string()
  end
  def identidade(any), do: any

  defmacro macro_contrario(clause, do: expression) do
    IO.inspect(clause)
    quote do
      case(!unquote(clause)) do
        true -> unquote(expression)
        _ -> String.reverse(unquote(expression))
      end
    end
  end
  defmacro __using__(opts) do
    quote do
      import Unifor, only: [list_to_string: 2, identidade: 1]
      fn x -> [x, unquote(opts), 8, 9,10] end
    end
  end
end
