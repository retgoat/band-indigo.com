defmodule BandIndigo.DiscographyControllerTest do
  use BandIndigo.ConnCase

  setup do
    d1 = BandIndigo.Repo.insert!(%BandIndigo.Disk{name: "Name",
                                                  label: "Label",
                                                  year: elem(Ecto.Date.cast("2009-01-11"), 1),
                                                  cover_name: "bar.jpg"})
    BandIndigo.Repo.insert!(%BandIndigo.Track{name: "foo",
                                              duration: elem(Ecto.Time.cast("00:03:30"), 1),
                                              disk_id: d1.id})
    :ok
  end

  test "GET /discography" do
    conn = get conn(), "/discography"
    assert html_response(conn, 200) =~ "Name"
  end
end
