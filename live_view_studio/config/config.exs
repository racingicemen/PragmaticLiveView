# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :live_view_studio,
  ecto_repos: [LiveViewStudio.Repo]

# Configures the endpoint
config :live_view_studio, LiveViewStudioWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "scmM2umLxQ3zx7Gs/Xz/VauC52tehAqj/7wxbV6sFor/4BDoLcvuK/vpVcTL9+01",
  render_errors: [view: LiveViewStudioWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: LiveViewStudio.PubSub,
  live_view: [signing_salt: "cYVwfUDn"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
