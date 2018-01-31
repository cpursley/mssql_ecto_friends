defmodule Mix.Tasks.Seed do
  use Mix.Task
  alias Friends.Repo
  import Ecto

  # @shortdoc "Seed the database with fake data."
  def run(_) do
    Mix.Task.run "app.start", []
    seed(Mix.env)
  end

  def seed(:dev) do
    Mix.shell.info "Seeding Database"
    Friends.Repo.delete_all(Friends.Person)
    Friends.Repo.insert! %Friends.Person{first_name: "José", last_name: "Valim", age: 31}
    Friends.Repo.insert! %Friends.Person{first_name: "Chris", last_name: "McCord", age: 30}
    Friends.Repo.insert! %Friends.Person{first_name: "Chase", last_name: "Pursley", age: 33}
  end

  def seed(:prod) do
    # Proceed with caution for production
  end
end
