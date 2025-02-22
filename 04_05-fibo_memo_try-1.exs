defmodule Fibonacci do
  def fibo(n), do: fibo(n, %{0 => 0, 1 => 1})

  defp fibo(n, memo) do
    IO.puts("called #{n}")

    case Map.get(memo, n) do
      nil ->
        result = fibo(n - 1, memo) + fibo(n - 2, memo)
        # ???
        memo = Map.put(memo, n, result)
        result

      x ->
        x
    end
  end
end

fibos = 0..9 |> Enum.map(&Fibonacci.fibo/1)
IO.inspect(fibos)
