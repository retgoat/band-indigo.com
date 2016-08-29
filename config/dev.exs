use Mix.Config

# For development, we disable any cache and enable
# debugging and code reloading.
#
# The watchers configuration can be used to run external
# watchers to your application. For example, we use it
# with brunch.io to recompile .js and .css sources.
config :band_indigo, BandIndigo.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  cache_static_lookup: false,
  check_origin: false,
  watchers: [node: ["node_modules/brunch/bin/brunch", "watch", "--stdin", cd: Path.expand("../", __DIR__)]]

# Watch static and templates for browser reloading.
config :band_indigo, BandIndigo.Endpoint,
  live_reload: [
    patterns: [
      ~r{priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$},
      ~r{web/views/.*(ex)$},
      ~r{web/templates/.*(eex)$}
    ]
  ]

# Do not include metadata nor timestamps in development logs
# config :logger, format: "[$level] $message\n",
#   backends: [{LoggerFileBackend, :error_log}, :console]
# config :logger, :console, format: "[$level] $message\n"

config :logger,
  backends: [{LoggerFileBackend, :info}]

config :logger, :info,
  path: "./log/dev.log",
  level: :info

# Set a higher stacktrace during development.
# Do not configure such in production as keeping
# and calculating stacktraces is usually expensive.
config :phoenix, :stacktrace_depth, 20

# Configure your database
config :band_indigo, BandIndigo.Repo,
  adapter: Ecto.Adapters.MySQL,
  username: "root",
  password: "",
  database: "band_indigo_dev",
  hostname: "localhost",
  pool_size: 10


