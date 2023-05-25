defmodule ToyAlchemist.Alchemist do
  defstruct [:position]

  alias ToyAlchemist.Position

  def move(%__MODULE__{position: position} = alchemist, direction)
      when direction in [:east, :west, :north, :south] do
    %{alchemist | position: Position.move(position, direction)}
  end

  def new(position \\ Position.new()) do
    struct!(__MODULE__, position: position)
  end
end
