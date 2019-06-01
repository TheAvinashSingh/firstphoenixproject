defmodule Firstphoenixproject.PlaylistsTest do
  use Firstphoenixproject.DataCase

  alias Firstphoenixproject.Playlists

  describe "playlists" do
    alias Firstphoenixproject.Playlists.Playlist

    @valid_attrs %{title: "some title", url: "some url"}
    @update_attrs %{title: "some updated title", url: "some updated url"}
    @invalid_attrs %{title: nil, url: nil}

    def playlist_fixture(attrs \\ %{}) do
      {:ok, playlist} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Playlists.create_playlist()

      playlist
    end

    test "list_playlists/0 returns all playlists" do
      playlist = playlist_fixture()
      assert Playlists.list_playlists() == [playlist]
    end

    test "get_playlist!/1 returns the playlist with given id" do
      playlist = playlist_fixture()
      assert Playlists.get_playlist!(playlist.id) == playlist
    end

    test "create_playlist/1 with valid data creates a playlist" do
      assert {:ok, %Playlist{} = playlist} = Playlists.create_playlist(@valid_attrs)
      assert playlist.title == "some title"
      assert playlist.url == "some url"
    end

    test "create_playlist/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Playlists.create_playlist(@invalid_attrs)
    end

    test "update_playlist/2 with valid data updates the playlist" do
      playlist = playlist_fixture()
      assert {:ok, %Playlist{} = playlist} = Playlists.update_playlist(playlist, @update_attrs)
      assert playlist.title == "some updated title"
      assert playlist.url == "some updated url"
    end

    test "update_playlist/2 with invalid data returns error changeset" do
      playlist = playlist_fixture()
      assert {:error, %Ecto.Changeset{}} = Playlists.update_playlist(playlist, @invalid_attrs)
      assert playlist == Playlists.get_playlist!(playlist.id)
    end

    test "delete_playlist/1 deletes the playlist" do
      playlist = playlist_fixture()
      assert {:ok, %Playlist{}} = Playlists.delete_playlist(playlist)
      assert_raise Ecto.NoResultsError, fn -> Playlists.get_playlist!(playlist.id) end
    end

    test "change_playlist/1 returns a playlist changeset" do
      playlist = playlist_fixture()
      assert %Ecto.Changeset{} = Playlists.change_playlist(playlist)
    end
  end
end
