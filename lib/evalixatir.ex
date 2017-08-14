defmodule Evalixatir do
  @moduledoc """
  Documentation for Evalixatir.
  """

  @doc """
  Checks whether string is an integer.

  ## Examples

      iex(9)> Evalixatir.integer? "-1234"
      true

  """
  def integer?(string) do
    Regex.match?(~r/^[-+]?\d+$/, string)
  end

  @doc """
  Checks whether string is a valid MAC address.

  ## Examples
  """
  def mac?(s) do
    # Regex from https://stackoverflow.com/a/4260512/807703
    Regex.match?(~r/^([0-9a-fA-F]{2}[:-]){5}([0-9A-Fa-f]{2})$/, s)
  end
end
