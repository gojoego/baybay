defmodule Baybay.Application do
  # See https://elixir.hexdocs.pm/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      BaybayWeb.Telemetry,
      Baybay.Repo,
      {DNSCluster, query: Application.get_env(:baybay, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Baybay.PubSub},
      # Start a worker by calling: Baybay.Worker.start_link(arg)
      # {Baybay.Worker, arg},
      # Start to serve requests, typically the last entry
      BaybayWeb.Endpoint
    ]

    # See https://elixir.hexdocs.pm/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Baybay.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    BaybayWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
