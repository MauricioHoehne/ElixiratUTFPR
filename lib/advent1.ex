defmodule Advent1 do
  @moduledoc """
  Documentation for `Advent1`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Advent1.hello()
      :world

  """
 def readAdventFile(filepath) do
# This is the main function, activating a private function to read the file content and them submit it to another function to calculate the challenge
  {:ok, context} = readFile(filepath)

  [head | tail]  = Enum.map((String.split(context, "\r\n", trim: true)),fn x -> String.to_integer(x) end)

   if is_list([head | tail]) do

    IO.puts ("The result of the advent is:")
    IO.puts (calculateAdvent([head | tail]))

   end

 end



 defp readFile(filepath) do
   # Starting Reading the file, the result is a tuple
   try do
    File.read(filepath)
   rescue
    e in RuntimeError -> IO.puts("An error occurred when read the file: " <> e.message)
   end

 end

defp calculateAdvent([head | tail]) do
  # This function will compare the elements of the list and calculate them to find the result
  filtered = Enum.filter(tail, fn element -> head + element == 2020 end)

  case filtered do
      [] -> calculateAdvent(tail)
      _ -> head * hd(filtered)

   end

end


end

fileInput = "..\\data\\AdventofCodeChallengeInput.txt"

IO.puts ("Advent of Code Day 1 2020")
IO.puts ("The file bellow is being used to calculate the challenge:")
IO.puts (fileInput)
IO.puts (Advent1.readAdventFile(fileInput))
