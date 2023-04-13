defmodule RetroWeb.CounterLive.Contboard do
  use RetroWeb, :live_component
  # use Phoenix.LiveComponent

  @impl true
  def update(assigns, socket) do
    # id = assigns.mesa.id
    # {:ok, assign(socket, :board, %{ id: "board-#{id}", mesa: Retro.Boards.get_board!(id)})}
    {:ok, 
      socket
        |> assign(assigns)
    }

  end


  @impl true
  def handle_event("inc", %{"inc" => id}, socket) do
    # IO.inspect(socket)
    board = Retro.Boards.get_board!(id)
    attrs = %{cont: board.cont+1}
    {_, board} = Retro.Boards.update_board(board, attrs)
    socket = assign(socket, :mesa, board)
    # update(assigns, socket)
    {:noreply, socket}
  end

  @impl true
  def handle_event("dec", %{"dec" => id}, socket) do
    board = Retro.Boards.get_board!(id)
    attrs = %{cont: board.cont-1}
    {_, board} = Retro.Boards.update_board(board, attrs)
    socket = assign(socket, :mesa, board)
    # update(assigns, socket)
    {:noreply, socket}
  end

end

