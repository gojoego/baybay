defmodule BaybayWeb.PageController do
  use BaybayWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
