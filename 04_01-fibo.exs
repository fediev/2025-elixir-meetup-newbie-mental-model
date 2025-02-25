# NO Tail Call Optimization
defmodule Fibonacci do
  def fibo(0), do: 0
  def fibo(1), do: 1

  def fibo(n) do
    fibo(n - 1) + fibo(n - 2)
  end
end

fibos = 0..9 |> Enum.map(&Fibonacci.fibo/1)
IO.inspect(fibos)
