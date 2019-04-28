# Since configuration is shared in umbrella projects, this file
# should only configure the :evening_phx_web application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# General application configuration
config :evening_phx_web,
  generators: [context_app: :evening_phx]

# Configures the endpoint
config :evening_phx_web, EveningPhxWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "NMb7jwA4TyvrGCDfgnMUO8BiGtGIELS44dKlFd2Xp69Bg0EMBLd1se2KhO1eDx/5",
  render_errors: [view: EveningPhxWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: EveningPhxWeb.PubSub, adapter: Phoenix.PubSub.PG2]

config :evening_phx_web, EveningPhxWeb.Endpoint,
  live_view: [
    signing_salt: "53HM4LcsOPp4KiLQNWceql+OAK2wZU+r"
  ]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
