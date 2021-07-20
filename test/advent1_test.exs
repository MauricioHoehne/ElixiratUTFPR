defmodule Advent1Test do
  use ExUnit.Case
  doctest Advent1

  test "Test the load file and calculate challenge" do
    fileInput = "C:\\Users\\mauri\\OneDrive\\Utfpr\\Funct_Prog\\advent1\\data\\AdventofCodeChallengeInput.txt"
    assert Advent1.readAdventFile(fileInput) == 1018944
  end
end
