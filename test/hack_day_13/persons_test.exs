defmodule HackDay13.PersonsTest do
  use HackDay13.DataCase

  alias HackDay13.Persons

  describe "persons" do
    alias HackDay13.Persons.Person

    import HackDay13.PersonsFixtures

    @invalid_attrs %{email: nil, firstname: nil, surname: nil}

    test "list_persons/0 returns all persons" do
      person = person_fixture()
      assert Persons.list_persons() == [person]
    end

    test "get_person!/1 returns the person with given id" do
      person = person_fixture()
      assert Persons.get_person!(person.id) == person
    end

    test "create_person/1 with valid data creates a person" do
      valid_attrs = %{email: "some email", firstname: "some firstname", surname: "some surname"}

      assert {:ok, %Person{} = person} = Persons.create_person(valid_attrs)
      assert person.email == "some email"
      assert person.firstname == "some firstname"
      assert person.surname == "some surname"
    end

    test "create_person/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Persons.create_person(@invalid_attrs)
    end

    test "update_person/2 with valid data updates the person" do
      person = person_fixture()
      update_attrs = %{email: "some updated email", firstname: "some updated firstname", surname: "some updated surname"}

      assert {:ok, %Person{} = person} = Persons.update_person(person, update_attrs)
      assert person.email == "some updated email"
      assert person.firstname == "some updated firstname"
      assert person.surname == "some updated surname"
    end

    test "update_person/2 with invalid data returns error changeset" do
      person = person_fixture()
      assert {:error, %Ecto.Changeset{}} = Persons.update_person(person, @invalid_attrs)
      assert person == Persons.get_person!(person.id)
    end

    test "delete_person/1 deletes the person" do
      person = person_fixture()
      assert {:ok, %Person{}} = Persons.delete_person(person)
      assert_raise Ecto.NoResultsError, fn -> Persons.get_person!(person.id) end
    end

    test "change_person/1 returns a person changeset" do
      person = person_fixture()
      assert %Ecto.Changeset{} = Persons.change_person(person)
    end
  end
end
