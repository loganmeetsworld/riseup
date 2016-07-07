defmodule Riseup.Repo.Migrations.AddChannel do
  use Ecto.Migration

  def change do
    create table(:channels) do
      add :name, :string, null: false

      timestamps
    end
  end
end
