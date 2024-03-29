defmodule TauspaceOban.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    :ok = Oban.Telemetry.attach_default_logger()
    children = [
      # Start the Telemetry supervisor
      TauspaceObanWeb.Telemetry,
      # Start the Ecto repository
      TauspaceOban.Repo,

      {Oban, Application.fetch_env!(:tauspace_oban, Oban)},
      # Start the PubSub system
      {Phoenix.PubSub, name: TauspaceOban.PubSub},
      # Start Finch
      {Finch, name: TauspaceOban.Finch},
      # Start the Endpoint (http/https)
      TauspaceObanWeb.Endpoint
      # TauspaceOban.Logging
      # Start a worker by calling: TauspaceOban.Worker.start_link(arg)
      # {TauspaceOban.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: TauspaceOban.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    TauspaceObanWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
