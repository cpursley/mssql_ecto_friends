# Friends

A sample application built for Ecto guides.

Based on: https://github.com/elixir-ecto/ecto/tree/master/examples/friends

### Get started

Build Docker:

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
