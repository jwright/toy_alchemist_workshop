defmodule ToyAlchemist.Position do
  defstruct [:north, :east]

  def new(north \\ 0, east \\ 0) do
    struct!(__MODULE__, north: north, east: east)
  end

  def move(%__MODULE__{east: east} = position, :east) do
    %{position | east: east + 1}
  end

  def move(%__MODULE__{east: east} = position, :west) do
    %{position | east: east - 1}
  end

  def move(%__MODULE__{north: north} = position, :north) do
    %{position | north: north + 1}
  end

  def move(%__MODULE__{north: north} = position, :south) do
    %{position | north: north - 1}
  end
end
