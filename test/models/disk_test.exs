defmodule BandIndigo.DiskTest do
  use BandIndigo.ModelCase

  alias BandIndigo.Disk

  @valid_attrs %{cover_name: "some content", label: "some content", name: "some content", track_id: 42, year: "2010-04-17"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Disk.changeset(%Disk{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Disk.changeset(%Disk{}, @invalid_attrs)
    refute changeset.valid?
  end
end
