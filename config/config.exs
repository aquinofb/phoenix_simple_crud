# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :crud, Crud.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "dU5qAgn9nR9N0tCrJh7qhJdMKwb5slmbACerM8t0cXint/XNKEvaWTRimYv5z90i",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: Crud.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Configure phoenix generators
config :phoenix, :generators,
  migration: true,
  binary_id: false
