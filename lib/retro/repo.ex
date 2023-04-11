defmodule Retro.Repo do
  use Ecto.Repo,
    otp_app: :retro,
    adapter: Ecto.Adapters.SQLite3
end
