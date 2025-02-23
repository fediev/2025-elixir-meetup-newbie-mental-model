# pipe operator for chaining
defmodule Greeting do
  def hello(name) do
    IO.puts("Hello #{name}!")
  end

  def hellos(names) do
    there = names |> Enum.map(&String.capitalize/1) |> Enum.sort() |> Enum.join(", ")

    hello(there)
  end
end

my_langs = ["javascript", "python", "elixir"]
Greeting.hellos(my_langs)
