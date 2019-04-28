defmodule EveningPhxWeb.PageController do
  use EveningPhxWeb, :controller
  import Phoenix.LiveView.Controller

  def index(conn, params) do
    id = Map.get(params, "id", nil)
    live_render(conn, EveningPhxWeb.OverviewLive, session: %{:id => id})
  end
end
