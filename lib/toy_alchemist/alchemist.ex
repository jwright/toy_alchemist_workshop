defmodule ToyAlchemist.Alchemist do
  defstruct [:facing, :position]

  alias ToyAlchemist.Position

  def move(%__MODULE__{position: position, facing: direction} = alchemist)
      when direction in [:east, :west, :north, :south] do
    %{alchemist | position: Position.move(position, direction)}
  end

  def new(position \\ Position.new(), facing \\ :north) do
    struct!(__MODULE__, facing: facing, position: position)
  end
end
