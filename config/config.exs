# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# configure the repo
config :band_indigo,
 ecto_repos: [BandIndigo.Repo],
 namespace: BandIndigo

# Configures the endpoint
config :band_indigo, BandIndigo.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "TNXeEtDKb6yrJTLh43yGJ+hoH7pNxjQY3v2fl27dqPjtS4edw/P5Gp8CFHnECV6q",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: BandIndigo.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Configure phoenix generators
config :phoenix, :generators,
  migration: true,
  binary_id: false
