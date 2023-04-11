defmodule RetroWeb.CounterLive.Index do
  
  use RetroWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, val: 0, cont: 0)}
  end

  @impl true
  def handle_event("inc", _params, socket) do
    {:noreply, update(socket, :val, &(&1+1))}
  end

  @impl true
  def handle_event("dec", _params, socket) do
    {:noreply, update(socket, :val, &(&1-1))}
  end

end



