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
$ docker-compose mix ecto.create
$ docker-compose mix ecto.migrate
```

Interact with iex:

```bash
$ iex -S mix
iex> josé = %Friends.Person{first_name: "José", last_name: "Valim", age: 31}
iex> josé |> Friends.Repo.insert
iex> chris = %Friends.Person{first_name: "Chris", last_name: "McCord", age: 34}
iex> chris |> Friends.Repo.insert
iex> Friends.Repo.all Friends.Person
```
