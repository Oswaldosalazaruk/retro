defmodule Retro.Games.Game do
  use Ecto.Schema
  import Ecto.Changeset
  alias Retro.Boards

  schema "games" do
    field :cont, :integer
    field :name, :string
    # field :board_id, :integer
    belongs_to :board, Boards.Board

    timestamps()
  end

  @doc false
  def changeset(game, attrs) do
    game
    |> cast(attrs, [:cont, :name, :board_id])
    |> validate_required([:cont, :name, :board_id])
  end
end
