defmodule Baybay.Repo do
  use Ecto.Repo,
    otp_app: :baybay,
    adapter: Ecto.Adapters.Postgres
end
