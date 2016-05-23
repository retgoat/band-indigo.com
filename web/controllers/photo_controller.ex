defmodule BandIndigo.PhotoController do
  use BandIndigo.Web, :controller

  def index(conn, _params) do
    {:ok, access_token} = Application.fetch_env(:elixtagram, :access_token)
    Elixtagram.configure
    Elixtagram.configure(:global, access_token)
    user = Elixtagram.user(:self, :global)
    if user.id == "2953237909" do
      media = Elixtagram.user_recent_media(:self, %{count: 100})
      data = %{ user: user, media: media, is_authenticated: true }
      render conn, "index.html", data: data
    else
      render conn, "500.html"
    end
  end
end