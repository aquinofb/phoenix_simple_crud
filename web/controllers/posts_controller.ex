defmodule Crud.PostsController do
  use Crud.Web, :controller

  alias Crud.Post

  def index(conn, _params) do
    posts = Post |> Post.published |> Repo.all
    render(conn, "index.html", posts: posts)
  end
end
