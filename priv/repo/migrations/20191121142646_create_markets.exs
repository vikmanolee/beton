defmodule Beton.Repo.Migrations.CreateMarkets do
  use Ecto.Migration

  def change do
    create table(:markets) do
      add :name, :string
      add :outright_id, :integer

      timestamps()
    end

  end
end
