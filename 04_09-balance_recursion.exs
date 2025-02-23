defmodule Recurse do
  def balance(transactions), do: balance(transactions, 0, [])

  defp balance([head | tail], balance, history) do
    new_balance = balance + head
    balance(tail, new_balance, [new_balance | history])
  end

  defp balance([], _balance, history), do: Enum.reverse(history)

  def balance_2(transactions), do: balance_2(transactions, 0, [])

  defp balance_2([head | tail], balance, history) do
    new_balance = balance + head
    balance(tail, new_balance, history ++ [new_balance])
  end

  defp balance_2([], _balance, history), do: history
end

IO.inspect(Recurse.balance([100, -50, 75, -40, 50]))
IO.inspect(Recurse.balance_2([100, -50, 75, -40, 50]))
