# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :email_test, EmailTest.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "82rtjBJ35tA8699xqtl6JkidzdcCeSpFgPAbmvl8F6wSurmyDiCH541xApmzYdrI",
  render_errors: [view: EmailTest.ErrorView, accepts: ~w(html json)],
  pubsub: [name: EmailTest.PubSub,
           adapter: Phoenix.PubSub.PG2]

config :email_test, EmailTest.Mailer,
  adapter: Bamboo.SMTPAdapter,
  server: "smtp.gmail.com",
  port: 587,
  username: System.get_env("GMAIL_SMTP_USERNAME"),
  password: System.get_env("GMAIL_SMTP_PASSWORD"),
  tls: :if_available,
  ssl: true,
  retries: 1

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
