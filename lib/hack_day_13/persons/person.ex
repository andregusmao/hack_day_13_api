defmodule HackDay13.Persons.Person do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "persons" do
    field :email, :string
    field :firstname, :string
    field :surname, :string

    timestamps()
  end

  @doc false
  def changeset(person, attrs) do
    person
    |> cast(attrs, [:firstname, :surname, :email])
    |> validate_required([:firstname, :surname, :email])
  end
end
