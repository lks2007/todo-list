defmodule Todo.Repo.Migrations.CreateTask do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :name, :string, null: false
      add :project, :string, null: false
      add :creator, :id, null: false
      add :owner, :id, null: false
      timestamps()
    end
  end
end
