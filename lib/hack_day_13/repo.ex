defmodule HackDay13.Repo do
  use Ecto.Repo,
    otp_app: :hack_day_13,
    adapter: Ecto.Adapters.Postgres
end
