# multiple clause function
defmodule Prime do
  def is_prime?(n) when n <= 1, do: false
  def is_prime?(2), do: true
  def is_prime?(n) when rem(n, 2) == 0, do: false

  def is_prime?(n) do
    limit = :math.sqrt(n) |> floor()
    !Enum.any?(3..limit//2, fn i -> rem(n, i) == 0 end)
  end
end

for n <- 0..30 do
  if Prime.is_prime?(n) do
    IO.puts(n)
  end
end
