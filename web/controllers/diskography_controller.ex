defmodule BandIndigo.DiscographyController do
  use BandIndigo.Web, :controller

  alias BandIndigo.Repo
  alias BandIndigo.Disk

  def index(conn, _params) do
    disks = Repo.all(Disk)
    render(conn, "index.html", disks: disks)
  end

  def show(conn, %{"id" => id}) do
    disk = Disk |> Repo.get!(id) |> Repo.preload [:tracks]
    render(conn, "show.html", disk: disk)
  end
end
