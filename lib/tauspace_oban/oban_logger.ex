defmodule TauspaceOban.ObanLogger do
  require Logger

  def handle_event([:oban, :job, :start], measure, meta, _) do
    Logger.debug("[Oban] :started #{meta.worker} at #{measure.system_time} | Job ID: #{meta.job.id} | Job state: #{meta.job.state} | Job attempted at: #{meta.job.attempted_at}")
  end

  def handle_event([:oban, :job, event], measure, meta, _) do
    Logger.debug("[Oban] #{event} #{meta.worker} ran in #{measure.duration} | Job ID: #{meta.job.id} | Job state: #{meta.job.state} | Job attempted at: #{meta.job.attempted_at}")
  end
end
