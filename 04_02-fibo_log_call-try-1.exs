# No closure
num_calls = 0

defmodule Fibonacci do
  def fibo(0), do: 0
  def fibo(1), do: 1

  def fibo(n) do
    log_call()
    fibo(n - 1) + fibo(n - 2)
  end

  defp log_call do
    num_calls = num_calls + 1
    IO.puts("called #{num_calls}")
  end
end

fibos = 0..9 |> Enum.map(&Fibonacci.fibo/1)
IO.inspect(fibos)
