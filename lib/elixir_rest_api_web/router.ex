defmodule ElixirRestApiWeb.Router do
  use ElixirRestApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ElixirRestApiWeb do
    pipe_through :api
  end
end
