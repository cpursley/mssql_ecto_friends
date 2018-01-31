# Friends

A sample application demonstrating [MssqlEcto](https://github.com/findmypast-oss/mssql_ecto) (Microsoft SQL Server + Elixir's Ecto)

Based on: https://github.com/elixir-ecto/ecto/tree/master/examples/friends

## Installation

Install Docker Compose: https://docs.docker.com/compose/install

Build containers, Elixir and MS SQL:

```bash
$ docker-compose build
$ docker-compose up
```

In separate terminal:

```bash
$ docker-compose mix setup
```

Interact with iex:

```bash
$ iex -S mix
iex> Friends.Repo.all Friends.Person
```
