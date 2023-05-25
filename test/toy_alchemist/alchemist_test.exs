defmodule ToyAlchemist.AlchemistTest do
  use ExUnit.Case

  alias ToyAlchemist.Alchemist

  test "move\1 moves the alchemist east" do
    alchemist = Alchemist.new()

    assert Alchemist.move(alchemist).position == 1
  end
end
