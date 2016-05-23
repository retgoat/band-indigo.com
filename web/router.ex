defmodule BandIndigo.Router do
  use BandIndigo.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", BandIndigo do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index

    get "/discography", DiscographyController, :index
    get "/band", BandController, :index
    get "/photo", PhotoController, :index
  end
end
