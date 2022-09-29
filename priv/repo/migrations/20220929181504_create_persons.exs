defmodule HackDay13.Repo.Migrations.CreatePersons do
  use Ecto.Migration

  def change do
    create table(:persons, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :firstname, :string
      add :surname, :string
      add :email, :string

      timestamps()
    end
  end
end
