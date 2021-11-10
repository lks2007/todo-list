defmodule TodoWeb.TaskControllerTest do
  use TodoWeb.ConnCase

  test "GET /tasks/", %{conn: conn} do
    conn = get(conn, "/tasks/") 
    assert html_response(conn, 200) =~ "<hello>"
  end
end
