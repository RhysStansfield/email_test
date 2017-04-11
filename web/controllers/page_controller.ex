defmodule EmailTest.PageController do
  use EmailTest.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
