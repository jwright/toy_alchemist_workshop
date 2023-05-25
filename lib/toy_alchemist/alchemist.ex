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

  def turn_left(%__MODULE__{facing: direction} = alchemist) do
    case direction do
      :north -> %{alchemist | facing: :west}
      :west -> %{alchemist | facing: :south}
      :east -> %{alchemist | facing: :north}
      :south -> %{alchemist | facing: :east}
      _ -> alchemist
    end
  end

  def turn_right(%__MODULE__{facing: direction} = alchemist) do
    case direction do
      :north -> %{alchemist | facing: :east}
      :west -> %{alchemist | facing: :north}
      :east -> %{alchemist | facing: :south}
      :south -> %{alchemist | facing: :west}
      _ -> alchemist
    end
  end
end
