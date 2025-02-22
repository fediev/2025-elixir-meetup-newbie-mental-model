# https://www.phoenixframework.org/
# Build a real-time Twitter clone in 15 minutes with LiveView and Phoenix 1.5
# https://www.youtube.com/watch?v=MZvmYaFkNJI&t=480

# value is used in function definition?
defmodule Chirp.Timeline do
  # ...
  defp broadcase({:error, _reason} = error, _event), do: error

  defp broadcase({:ok, p}, event) do
    Phoenix.PubSub.broadcast(Chirp.PubSub, "posts", {event, post})
    {:ok, post}
  end
end
