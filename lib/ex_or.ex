defmodule ExOr do
  @moduledoc """
  Documentation for ExOr.
  """
  def validate(_struct, []), do: {:err, "Must pass fields"}
  def validate(%_{} = struct, opts) do
    {:ok, struct, opts}
  end
  def validate(_struct, _opts), do: {:err, "Must pass struct"}
end
