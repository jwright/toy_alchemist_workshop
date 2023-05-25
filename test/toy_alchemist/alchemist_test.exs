defmodule ToyAlchemist.AlchemistTest do
  use ExUnit.Case

  alias ToyAlchemist.{Alchemist, Position}

  setup do
    alchemist = Alchemist.new(Position.new(0, 2))

    [alchemist: alchemist]
  end

  test "move\1 moves west when the alchemist is facing west", %{alchemist: alchemist} do
    alchemist = %{alchemist | facing: :west}

    assert Alchemist.move(alchemist).position == %Position{north: 0, east: 1}
  end

  test "move\1 moves east when the alchemist is facing east", %{alchemist: alchemist} do
    alchemist = %{alchemist | facing: :east}

    assert Alchemist.move(alchemist).position == %Position{north: 0, east: 3}
  end

  test "move\1 moves north when the alchemist is facing north", %{alchemist: alchemist} do
    alchemist = %{alchemist | facing: :north}

    assert Alchemist.move(alchemist).position == %Position{north: 1, east: 2}
  end

  test "move\1 moves south when the alchemist is facing south", %{alchemist: alchemist} do
    alchemist = %{alchemist | facing: :south}

    assert Alchemist.move(alchemist).position == %Position{north: -1, east: 2}
  end

  test "turn_left\1 turns the alchemist to the west when facing north", %{alchemist: alchemist} do
    alchemist = %{alchemist | facing: :north}

    assert Alchemist.turn_left(alchemist).facing == :west
  end

  test "turn_left\1 turns the alchemist to the south when facing west", %{alchemist: alchemist} do
    alchemist = %{alchemist | facing: :west}

    assert Alchemist.turn_left(alchemist).facing == :south
  end

  test "turn_right\1 turns the alchemist to the north when facing west", %{alchemist: alchemist} do
    alchemist = %{alchemist | facing: :west}

    assert Alchemist.turn_right(alchemist).facing == :north
  end
end
