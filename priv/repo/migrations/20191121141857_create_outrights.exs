defmodule Beton.Repo.Migrations.CreateOutrights do
  use Ecto.Migration

  def change do
    create table(:outrights) do
      add :name, :string

      timestamps()
    end

  end
end
