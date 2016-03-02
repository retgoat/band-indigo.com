defmodule BandIndigo.LayoutView do
  use BandIndigo.Web, :view

  def title(conn) do
    case conn.path_info do
      [] -> "Band Indigo — Instrumental Rock From Siberia"
      _ ->
        "Band Indigo: #{String.capitalize(hd conn.path_info)}"
    end
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
