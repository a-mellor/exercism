defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    String.downcase(sentence)
    |> String.replace(~r/[:!@$_%^&,]/, " ")
    |> String.split()
    |> Enum.reduce(%{}, fn word, accumulator -> Map.update(accumulator, word, 1, &(&1 + 1)) end)
  end
end
