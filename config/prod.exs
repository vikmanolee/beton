use Mix.Config

config :beton, BetonWeb.Endpoint,
  load_from_system_env: true,
  url: [host: Application.get_env(:beton, :app_hostname), port: Application.get_env(:beton, :app_port)],
  cache_static_manifest: "priv/static/cache_manifest.json"

# Do not print debug messages in production
config :logger, level: :info

# Which server to start per endpoint:
config :beton, BetonWeb.Endpoint, server: true

# import_config "prod.secret.exs"
