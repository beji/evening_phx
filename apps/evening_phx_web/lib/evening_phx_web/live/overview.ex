defmodule EveningPhxWeb.OverviewLive do
  use Phoenix.LiveView

  def render(assigns) do
    id = Map.get(assigns, :id, nil)
    if id == nil do
      EveningPhxWeb.PageView.render("redirect.html", %{:path => "/", :id => UUID.uuid1()})
    else
      EveningPhxWeb.PageView.render("overview.html", assigns)
    end
  end

  def mount(session, socket) do
    id = Map.get(session, :id, nil)
    {:ok, assign(socket, name: "Everybody-will-die-town", id: id)}
  end

  def handle_event("set-settlement-name", %{"settlement-name" => name}, socket) do
    {:noreply, assign(socket, name: name)}
  end
end
