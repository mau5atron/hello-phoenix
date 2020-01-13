defmodule HelloWeb.HelloController do
  use HelloWeb, :controller

  @spec index(Plug.Conn.t(), any) :: Plug.Conn.t()
  def index(conn, _params) do
    render(conn, "index.html")
    # conn is a struct which holds lots of data about the request
    # _params is the request parameters which has _ to signify it is not being used
  end

  @spec show(Plug.Conn.t(), map) :: Plug.Conn.t()
  def show(conn, %{ "messenger" => messenger }) do
    render(conn, "show.html", messenger: messenger)
  end
end
