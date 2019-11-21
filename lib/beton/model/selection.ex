defmodule Beton.Model.Selection do
  use Ecto.Schema
  import Ecto.Changeset

  schema "selections" do
    field :market_id, :integer
    field :name, :string
    field :odds, :float
    field :result, :integer

    timestamps()
  end

  @doc false
  def changeset(selection, attrs) do
    selection
    |> cast(attrs, [:name, :market_id, :odds, :result])
    |> validate_required([:name, :market_id, :odds, :result])
  end
end
