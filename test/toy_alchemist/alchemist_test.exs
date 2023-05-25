defmodule ToyAlchemist.AlchemistTest do
  use ExUnit.Case

  alias ToyAlchemist.Alchemist

  setup do
    alchemist = Alchemist.new(2)

    [alchemist: alchemist]
  end

  test "move\2 moves west when the alchemist needs to go west", %{alchemist: alchemist} do
    assert Alchemist.move(alchemist, :west).position == 1
  end

  test "move\2 moves east when the alchemist needs to go east", %{alchemist: alchemist} do
    assert Alchemist.move(alchemist, :east).position == 3
  end
end
