defmodule Riseup.Router do
  use Riseup.Web, :router

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

  scope "/api", Riseup do
    pipe_through :api

    resources "channels", ChannelController, only: [:create, :index]
    resources "users", UserController, only: [:new, :create, :index]
  end

  scope "/", Riseup do
    pipe_through :browser

    get "/", PageController, :index
  end

end