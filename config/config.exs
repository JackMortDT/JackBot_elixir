use Mix.Config

config :porcelain, goon_warn_if_missing: false
config :jackbot_elixir, token: System.get_env("DISCORD_TOKEN")
config :jackbot_elixir, cmd_prefix: "."