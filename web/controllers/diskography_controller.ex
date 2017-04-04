defmodule BandIndigo.DiscographyController do
  use BandIndigo.Web, :controller
  import Ecto.Query

  alias BandIndigo.Repo
  alias BandIndigo.Track
  alias BandIndigo.Disk

  def index(conn, _params) do
    disks = Disk
    |> Ecto.Query.order_by(desc: :year)
    |> Repo.all
    |> Repo.preload(tracks: from(t in Track, order_by: t.order))
    render(conn, "index.html", disks: disks)
  end
end
