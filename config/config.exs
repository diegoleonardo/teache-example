# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :teache,
  ecto_repos: [Teache.Repo]

# Configures the endpoint
config :teache, Teache.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LZRKp/oNFbqrjLZsrYO82LCgwidDBnzkd5j4cGNdGPa45q9RJr0/pcQxxVAwzBci",
  render_errors: [view: Teache.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Teache.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
