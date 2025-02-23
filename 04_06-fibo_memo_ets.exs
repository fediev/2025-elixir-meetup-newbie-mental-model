# Erlang Term Storage
defmodule Fibonacci do
  @memo :fibo_table

  def start_memo() do
    :ets.new(@memo, [:named_table])
  end

  def stop_memo() do
    :ets.delete(@memo)
  end

  def fibo(n) do
    IO.puts("called #{n}")

    case :ets.lookup(@memo, n) do
      [{_, result}] ->
        result

      [] ->
        result =
          case n do
            0 -> 0
            1 -> 1
            n -> fibo(n - 1) + fibo(n - 2)
          end

        :ets.insert(@memo, {n, result})
        result
    end
  end
end

Fibonacci.start_memo()

fibos = 0..10 |> Enum.map(&Fibonacci.fibo/1)
IO.inspect(fibos)

Fibonacci.stop_memo()
