defmodule Friends.Mixfile do
  use Mix.Project

  def project do
    [
      app: :friends,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env == :prod,
      deps: deps(),
      aliases: aliases()
   ]
  end

  def application do
    [
      applications: [:logger, :ecto, :postgrex, :mssqlex, :mssql_ecto],
      mod: {Friends, []}
   ]
  end

  defp aliases do
    [
      test: ["ecto.create", "ecto.migrate", "test"],
      setup: ["ecto.create", "ecto.migrate", "seed"]
    ]
  end

  defp deps do
    [
      {:postgrex, ">= 0.0.0"},
      {:ecto, "~> 2.1.0"},
      {:mssql_ecto, "~> 1.0.0"},
      {:mssqlex, "~> 1.0.0"}
    ]
  end
end
