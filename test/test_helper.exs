ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Crud.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Crud.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Crud.Repo)

