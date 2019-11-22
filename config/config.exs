# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :beton,
  ecto_repos: [Beton.Repo]

# Configures the endpoint
config :beton, BetonWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ved8ZFuV0m1pSOe8ryIcNYiLe5UIaCj/3eAKBdl5NbC1jqNkfhFCR5PuwO19AZhJ",
  live_view: [signing_salt: "ou+dNOexxyQmNRSh52SuRo0RCHcIaCe2"],
  render_errors: [view: BetonWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Beton.PubSub, adapter: Phoenix.PubSub.PG2]

# User authentication with Pow
config :beton, :pow,
  user: Beton.Users.User,
  repo: Beton.Repo

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
