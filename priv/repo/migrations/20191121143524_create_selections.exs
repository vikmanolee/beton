defmodule Beton.Repo.Migrations.CreateSelections do
  use Ecto.Migration

  def change do
    create table(:selections) do
      add :name, :string
      add :market_id, :integer
      add :odds, :float
      add :result, :integer

      timestamps()
    end

  end
end
