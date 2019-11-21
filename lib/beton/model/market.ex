defmodule Beton.Model.Market do
  use Ecto.Schema
  import Ecto.Changeset

  schema "markets" do
    field :name, :string
    field :outright_id, :integer

    timestamps()
  end

  @doc false
  def changeset(market, attrs) do
    market
    |> cast(attrs, [:name, :outright_id])
    |> validate_required([:name, :outright_id])
  end
end
