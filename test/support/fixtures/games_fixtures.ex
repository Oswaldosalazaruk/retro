defmodule Retro.GamesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Retro.Games` context.
  """

  @doc """
  Generate a game.
  """
  def game_fixture(attrs \\ %{}) do
    {:ok, game} =
      attrs
      |> Enum.into(%{
        cont: 42,
        name: "some name"
      })
      |> Retro.Games.create_game()

    game
  end
end
