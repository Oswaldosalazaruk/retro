defmodule RetroWeb.CounterLive.Contgame do
  use RetroWeb, :live_component
  # use Phoenix.LiveComponent

  @impl true
  def update(assigns, socket) do
    {:ok, 
      socket
        |> assign(assigns)
    }

  end


  @impl true
  def handle_event("inc", %{"inc" => id}, socket) do
    game = Retro.Games.get_game!(id)
    attrs = %{cont: game.cont+1}
    {_, game} = Retro.Games.update_game(game, attrs)
    socket = assign(socket, :juego, game)
    {:noreply, socket}
  end

  @impl true
  def handle_event("dec", %{"dec" => id}, socket) do
    game = Retro.Games.get_game!(id)
    attrs = %{cont: game.cont-1}
    {_, game} = Retro.Games.update_game(game, attrs)
    socket = assign(socket, :juego, game)
    {:noreply, socket}
 end

end

