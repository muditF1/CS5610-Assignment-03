defmodule Practice.Palindrome do
  def palindrome(inputText) do
    reversedString = inputText
    |> String.downcase()
    |> String.reverse()

    if reversedString == String.downcase(inputText) do
      "Palindrome"
    else
      "Not a Palindrome"
    end
  end
end
