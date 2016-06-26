ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Riseup.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Riseup.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Riseup.Repo)

