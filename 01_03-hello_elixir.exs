defmodule Greeting do
  def hello(name) do
    IO.puts("Hello #{name}!")
  end
end

Greeting.hello("Elixir")
