defmodule Todo.Task.Tasks do
  use Ecto.Schema
  import Ecto.Changeset

  schema "tasks" do
    field :name, :string
    field :project, :id
    field :owner, :id
    field :creator, :id

    timestamps()
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [:name, :project, :owner, :creator])
    |> validate_required([:name, :project, :owner, :creator])
  end
end
