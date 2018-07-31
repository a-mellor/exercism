defmodule Bob do
  def hey(input) do
    cond do
      question_in_capitals?(input) ->
        "Calm down, I know what I'm doing!"

      question?(input) ->
        "Sure."

      silence?(input) ->
        "Fine. Be that way!"

      shouting?(input) ->
        "Whoa, chill out!"

      true ->
        "Whatever."
    end
  end

  defp question?(input) do
    String.ends_with?(input, "?")
  end

  defp shouting?(input) do
    input == String.upcase(input) && String.match?(input, ~r/[^\d, ]+/)
  end

  defp silence?(input) do
    String.trim(input) == ""
  end

  defp question_in_capitals?(input) do
    question?(input) && input == String.upcase(input) && input =~ ~r/[[:alpha:]]/
  end
end
