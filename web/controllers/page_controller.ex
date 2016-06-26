defmodule Riseup.PageController do
  use Riseup.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
