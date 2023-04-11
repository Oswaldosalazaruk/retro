defmodule CounterLive.Counter do
  
  use Phoenix.LiveComponent

  @impl true
  def update(assigns, socket) do
    {:ok,
    socket
    |> assign(assigns)
    |> assign(cont: 0)
    }
  end


  @impl true
  def handle_event("inc", _params, socket) do
    cont = socket.assigns.cont

    {:noreply, assign(socket, cont: cont+1)}
  end

  @impl true
  def handle_event("dec", _params, socket) do
    cont = socket.assigns.cont

    {:noreply, assign(socket, cont: cont-1)}
  end

end

