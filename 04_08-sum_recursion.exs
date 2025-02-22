defmodule Recurse do
  def sum(nums), do: sum(nums, 0)

  defp sum([head | tail], total), do: sum(tail, total + head)
  defp sum([], total), do: total
end

IO.puts(Recurse.sum([1, 2, 3, 4, 5]))
