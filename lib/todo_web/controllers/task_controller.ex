defmodule TodoWeb.TaskController do
  use TodoWeb, :controller
  alias Todo.Task
  alias Todo.Task.Tasks

  def index(conn, _params) do
    #tasks = Task.list_all()
    render(conn, "index.html")
  end

  def new(conn, _params) do
    changeset = Tasks.changeset(%Tasks{})
    render(conn, "new.html", changeset: changeset)
  end
end
