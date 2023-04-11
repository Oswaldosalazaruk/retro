defmodule Retro.Boards.Board do
  use Ecto.Schema
  import Ecto.Changeset

  schema "boards" do
    field :tag, :string
    field :title, :string
    field :cont, :integer

    has_many :games, Retro.Games.Game
    
    timestamps()
  end

  @doc false
  def changeset(board, attrs) do
    board
    |> cast(attrs, [:title, :tag, :cont])
    |> validate_required([:title, :tag, :cont])
  end
end
