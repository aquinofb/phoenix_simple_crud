defmodule Crud.PageController do
  use Crud.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
