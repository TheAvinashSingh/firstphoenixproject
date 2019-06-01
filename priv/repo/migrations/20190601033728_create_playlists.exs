defmodule Firstphoenixproject.Repo.Migrations.CreatePlaylists do
  use Ecto.Migration

  def change do
    create table(:playlists) do
      add :title, :string
      add :url, :string

      timestamps()
    end

  end
end
