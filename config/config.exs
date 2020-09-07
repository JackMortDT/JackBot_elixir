use Mix.Config

config :porcelain, goon_warn_if_missing: false
config :logger, level: :info

# Tokens
config :jackbot_elixir, token: System.get_env("DISCORD_TOKEN")

# Discord
config :jackbot_elixir, discord_prefix: "!"