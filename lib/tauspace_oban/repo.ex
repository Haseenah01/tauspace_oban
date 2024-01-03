defmodule TauspaceOban.Repo do
  use Ecto.Repo,
    otp_app: :tauspace_oban,
    adapter: Ecto.Adapters.Postgres
end
