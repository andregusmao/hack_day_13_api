defmodule HackDay13Web.PersonView do
  use HackDay13Web, :view
  alias HackDay13Web.PersonView

  def render("index.json", %{persons: persons}) do
    %{data: render_many(persons, PersonView, "person.json")}
  end

  def render("show.json", %{person: person}) do
    %{data: render_one(person, PersonView, "person.json")}
  end

  def render("person.json", %{person: person}) do
    %{
      id: person.id,
      firstname: person.firstname,
      surname: person.surname,
      email: person.email
    }
  end
end
