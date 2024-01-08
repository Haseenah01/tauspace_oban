defmodule TauspaceOban.Workers.Emailjob do
  require Logger
  alias TauspaceOban.Mailer

  import Bamboo.Email

  use Oban.Worker, queue: :events, max_attempts: 3, tags: ["user", "email"], unique: [period: 60]

  @impl true
  def perform(%Oban.Job{args: %{"to" => to, "subject" => subject, "body" => body}} = _job) do
    #Logger.info("Job id: #{inspect(job.id)} | Job attempted at: #{inspect(job.attempted_at)}| Job state: #{inspect(job.state)} | Job queue: #{inspect(job.queue)} |")
    email = new_email(
          to: to,
          from: "haseenahsami27@gmail.com",
          subject: subject,
          text_body: body
        )
    Mailer.deliver_now(email)
  end

end
