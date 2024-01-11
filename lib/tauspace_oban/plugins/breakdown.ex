defmodule TauspaceOban.Plugins.Breakdown do
  @behaviour Oban.Plugin

  use GenServer

  import Ecto.Query, only: [group_by: 3, select: 3]

  @impl Oban.Plugin
  def start_link(opts) do
    name = Keyword.get(opts, :name, __MODULE__)

    GenServer.start_link(__MODULE__, opts, name: name)
  end

  @impl Oban.Plugin
  def validate(opts) do
    Oban.Validation.validate_schema(opts,
      conf: :any,
      name: :any,
      interval: :pos_integer
    )
  end

  @impl GenServer
  def init(opts) do
    state = Map.new(opts)

    {:ok, schedule_poll(state)}
  end

  @impl GenServer
  def handle_info(:poll, %{conf: conf} = state) do
    breakdown =
      Oban.Repo.all(
        conf,
        Oban.Job
        |> group_by([j], [j.queue, j.state])
        |> select([j], {j.queue, j.state, count(j.id)})
      )

    IO.inspect(breakdown)

    {:noreply, schedule_poll(state)}
  end

  defp schedule_poll(%{interval: interval} = state) do
    Process.send_after(self(), :poll, interval)

    state
  end
end
