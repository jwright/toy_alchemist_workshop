defmodule ToyAlchemist.AlchemistTest do
  use ExUnit.Case

  alias ToyAlchemist.{Alchemist, Position}

  setup do
    alchemist = Alchemist.new(Position.new(0, 2))

    [alchemist: alchemist]
  end

  test "move\2 moves west when the alchemist needs to go west", %{alchemist: alchemist} do
    assert Alchemist.move(alchemist, :west).position == %Position{north: 0, east: 1}
  end

  test "move\2 moves east when the alchemist needs to go east", %{alchemist: alchemist} do
    assert Alchemist.move(alchemist, :east).position == %Position{north: 0, east: 3}
  end

  test "move\2 moves north when the alchemist needs to go north", %{alchemist: alchemist} do
    assert Alchemist.move(alchemist, :north).position == %Position{north: 1, east: 2}
  end

  test "move\2 moves south when the alchemist needs to go south", %{alchemist: alchemist} do
    assert Alchemist.move(alchemist, :south).position == %Position{north: -1, east: 2}
  end
end
