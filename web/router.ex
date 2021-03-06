defmodule EmailTest.Router do
  use EmailTest.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", EmailTest do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  scope "/api", EmailTest do
    pipe_through :api

    post "/email/:email_address", EmailController, :create
  end

  # Other scopes may use custom stacks.
  # scope "/api", EmailTest do
  #   pipe_through :api
  # end
end
