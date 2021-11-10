defmodule Todo.Task do
  @moduledoc """
  The Accounts context.
  """

  import Ecto.Query, warn: false
  alias Todo.Repo

  ## Database getters


  def list_all() do
    query = from t in Todo.Task.Tasks,
    select: t
    Repo.all(query)
  end

end
