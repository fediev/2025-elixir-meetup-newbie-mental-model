defmodule Prime do
  def is_prime?(n) do
    cond do
      n < 2 ->
        false

      n == 2 ->
        true

      rem(n, 2) == 0 ->
        false

      true ->
        limit = :math.sqrt(n) |> floor()
        !Enum.any?(3..limit//2, fn i -> rem(n, i) == 0 end)
    end
  end
end

for n <- 0..30 do
  if Prime.is_prime?(n) do
    IO.puts(n)
  end
end
