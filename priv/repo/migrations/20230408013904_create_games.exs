defmodule Retro.Repo.Migrations.CreateGames do
  use Ecto.Migration

  def change do
    create table(:games) do
      add :cont, :integer
      add :name, :string
      add :board_id, references(:boards)
      timestamps()
    end
  end
end
