defmodule ToyAlchemist.Alchemist do
  defstruct [:position]

  def move(%__MODULE__{position: position} = alchemist) do
    %{alchemist | position: position + 1}
  end

  def new(position \\ 0) do
    struct!(__MODULE__, position: position)
  end
end
