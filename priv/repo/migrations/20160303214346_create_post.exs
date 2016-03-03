defmodule Crud.Repo.Migrations.CreatePost do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :content, :text
      add :status, :string

      timestamps
    end

  end
end
