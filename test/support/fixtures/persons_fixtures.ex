defmodule HackDay13.PersonsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `HackDay13.Persons` context.
  """

  @doc """
  Generate a person.
  """
  def person_fixture(attrs \\ %{}) do
    {:ok, person} =
      attrs
      |> Enum.into(%{
        email: "some email",
        firstname: "some firstname",
        surname: "some surname"
      })
      |> HackDay13.Persons.create_person()

    person
  end
end
