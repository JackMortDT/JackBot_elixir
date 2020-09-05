defmodule JackbotElixirTest do
  use ExUnit.Case
  doctest JackbotElixir

  test "greets the world" do
    assert JackbotElixir.hello() == :world
  end
end
