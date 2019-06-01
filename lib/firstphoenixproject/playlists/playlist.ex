defmodule Firstphoenixproject.Playlists.Playlist do
  use Ecto.Schema
  import Ecto.Changeset

  schema "playlists" do
    field :title, :string
    field :url, :string

    timestamps()
  end

  @doc false
  def changeset(playlist, attrs) do
    playlist
    |> cast(attrs, [:title, :url])
    |> validate_required([:title, :url])
  end
end
