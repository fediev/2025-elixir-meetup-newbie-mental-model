defmodule Prime do
  def is_prime?(n) do
    if n < 2 do
      false
    else
      true
    end
  end
end

for n <- 0..10 do
  if Prime.is_prime?(n) do
    IO.puts(n)
  end
end
