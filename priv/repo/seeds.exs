# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     HackDay13.Repo.insert!(%HackDay13.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias HackDay13.Persons

Persons.create_person(%{
  "firstname" => "André",
  "surname" => "Gusmão",
  "email" => "andre.gusmao@rcky.com.br"
})
