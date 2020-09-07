defmodule JackbotElixir do
  use Application
  @moduledoc """
  Documentation for JackbotElixir.
  """

  def start(_type, _args) do
    import Supervisor.Spec

    children = [
      worker(JackbotElixir.Manager.Worker, [%{
        handler: JackbotElixir.Manager.Worker,
        token: Application.get_env(:jackbot_elixir, :token)
      }])
    ]

    opts = [strategy: :one_for_one, name: JackbotElixir.Supervisor]
    Supervisor.start_link(children, opts)
  end

end