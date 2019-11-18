defmodule BetonWeb.PageController do
  use BetonWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
