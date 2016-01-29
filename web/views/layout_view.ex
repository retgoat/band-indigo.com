defmodule BandIndigo.LayoutView do
  use BandIndigo.Web, :view

  def title do
    "Band Indigo"
  end

  def active_class(conn, path) do
    current_path = Path.join(["/" | conn.path_info])
    if path == current_path do
      "active"
    else
      nil
    end
  end
end
