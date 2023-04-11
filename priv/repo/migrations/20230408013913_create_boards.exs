defmodule Retro.Repo.Migrations.CreateBoards do
  use Ecto.Migration

  def change do
    create table(:boards) do
      add :title, :string
      add :tag, :string
      add :cont, :integer
      timestamps()
    end
  end
end
