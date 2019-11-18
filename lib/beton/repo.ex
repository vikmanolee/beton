defmodule Beton.Repo do
  use Ecto.Repo,
    otp_app: :beton,
    adapter: Ecto.Adapters.Postgres
end
