defmodule TauspaceOban.DeliverEmail do

  def send do
    emails_to_send = [
      %{"to" => "haseenahsami27@gmail.com", "subject" => "Greetings", "body" => "Hello, User 1!"},
      %{"to" => "haseenahsami27@gmail.com", "subject" => "Special Offer", "body" => "Check out our latest offers, User 2!"}
      # Add more emails as needed
    ]

    Enum.each(emails_to_send, fn email ->
      email
      |> TauspaceOban.Workers.Emailjob.new()
      |> Oban.insert()
    end)
  end
end
