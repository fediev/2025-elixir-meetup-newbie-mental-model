# no method chaining
defmodule Greeting do
  def hello(name) do
    IO.puts("Hello #{name}!")
  end

  def hellos(names) do
    there = Enum.join(Enum.sort(Enum.map(names, &String.capitalize/1)), ", ")

    hello(there)
  end
end

my_langs = ["javascript", "python", "elixir"]
Greeting.hellos(my_langs)
