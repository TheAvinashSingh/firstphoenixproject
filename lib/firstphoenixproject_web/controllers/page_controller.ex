defmodule FirstphoenixprojectWeb.PageController do
  use FirstphoenixprojectWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
