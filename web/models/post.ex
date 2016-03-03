defmodule Crud.Post do
  use Crud.Web, :model

  schema "posts" do
    field :title, :string
    field :content, :string
    field :status, :string

    has_many :comments, Crud.Comment
    timestamps
  end

  @required_fields ~w(title content status)
  @optional_fields ~w()

  def draft(query) do
    from q in query, where: q.status == "draft"
  end

  def published(query) do
    from q in query, where: q.status == "published"
  end

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
    |> validate_length(:title, min: 2)
    |> validate_length(:content, min: 2)
  end
end
