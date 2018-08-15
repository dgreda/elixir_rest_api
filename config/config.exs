# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :elixir_rest_api,
  ecto_repos: [ElixirRestApi.Repo]

# Configures the endpoint
config :elixir_rest_api, ElixirRestApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "h0m3hpAfp1is8bu0m/Bc5nDgMiMfArRvxaEU7K6hIku7fFtykPcpoYItp7RVWGzT",
  render_errors: [view: ElixirRestApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: ElixirRestApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
