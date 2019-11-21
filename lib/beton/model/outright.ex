defmodule Beton.Model.Outright do
  use Ecto.Schema
  import Ecto.Changeset

  schema "outrights" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(outright, attrs) do
    outright
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
