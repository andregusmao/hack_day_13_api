defmodule HackDay13Web.Router do
  use HackDay13Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", HackDay13Web do
    pipe_through :api

    get "/persons", PersonController, :index
    get "/persons/:id", PersonController, :show
    post "/persons", PersonController, :create
    put "/persons/:id", PersonController, :update
    delete "/persons/:id", PersonController, :delete
  end
end
