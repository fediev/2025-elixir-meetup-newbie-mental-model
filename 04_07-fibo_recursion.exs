# recursion + TCO
defmodule Fibonacci do
  def fibo(n), do: fibo(n, 0, 1)

  defp fibo(0, _a, _b), do: 0
  defp fibo(1, _a, b), do: b
  defp fibo(n, a, b), do: fibo(n - 1, b, a + b)
end

fibos = 0..9 |> Enum.map(&Fibonacci.fibo/1)
IO.inspect(fibos)
