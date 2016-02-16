defmodule BandIndigo.TrackTest do
  use BandIndigo.ModelCase

  alias BandIndigo.Track

  @valid_attrs %{duration: "00:03:00", name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Track.changeset(%Track{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Track.changeset(%Track{}, @invalid_attrs)
    refute changeset.valid?
  end
end
