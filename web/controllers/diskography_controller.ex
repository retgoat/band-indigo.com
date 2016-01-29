defmodule BandIndigo.DiscographyController do
  use BandIndigo.Web, :controller

  alias BandIndigo.Repo
  alias BandIndigo.Disk

  def index(conn, _params) do
    disks = Disk  |> Ecto.Query.order_by(desc: :year) |> Repo.all |> Repo.preload [:tracks]
    render(conn, "index.html", disks: disks)
  end
end
