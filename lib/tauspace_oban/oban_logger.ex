defmodule TauspaceOban.ObanLogger do
  require Logger

  def handle_event([:oban, :job, :start], %{duration: _duration}, meta, nil) do
    Logger.info("#{inspect(meta.job)}")
  end
end
