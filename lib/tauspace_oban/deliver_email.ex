defmodule TauspaceOban.DeliverEmail do

  def send do
    emails_to_send = [
      %{"to" => "haseenahsami27@gmail.com", "subject" => "Greetings", "body" => "Hello, User 1!"},
      %{"to" => "haseenahsami27@gmail.com", "subject" => "Special Offer", "body" => "Check out our latest offers, User 2!"},
        %{"to" => "tsharp@example.net", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "vincentgarrett@example.net", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "mercadojonathan@example.com", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "lindsay55@example.com", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "blevinsmorgan@example.com", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "loretta85@example.com", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "yvaughn@example.net", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "greerjimmy@example.net", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "charleshiggins@example.org", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "leslie08@example.com", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "raymond24@example.org", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "preston28@example.net", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "joycejay@example.net", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "wesleymullins@example.net", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "nterry@example.net", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "devinherman@example.net", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "tommywoodard@example.com", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "brianna43@example.org", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "kristina40@example.net", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "meagan99@example.org", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "randystephenson@example.net", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "cmcclure@example.net", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "tristanpatterson@example.net", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "sonyamoyer@example.net", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "smejia@example.org", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "jillian34@example.net", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "villarrealgilbert@example.org", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "chogan@example.com", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "jasminlowe@example.org", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "youngbrandon@example.net", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "donaldsonomar@example.org", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "mackrachael@example.net", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "newtonbridget@example.net", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "collin32@example.com", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "gmerritt@example.net", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "ravenbecker@example.com", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "pcarey@example.com", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "rmcdaniel@example.com", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "vrobinson@example.com", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "chrisware@example.com", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "orrangie@example.net", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "guyayers@example.org", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "calhoundestiny@example.com", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "sethtrujillo@example.com", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "ymathews@example.net", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "katie30@example.com", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "juan72@example.net", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "danielhenry@example.org", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "faith61@example.com", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "dillonroberta@example.org", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "reginaldhuber@example.com", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "mackenzie07@example.org", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "tanyabeasley@example.org", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "avilahector@example.com", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "paigedoyle@example.net", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "dianeporter@example.net", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "zsoto@example.net", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "zpowers@example.net", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "graysheena@example.net", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "tescobar@example.org", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "meganchoi@example.net", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "qklein@example.com", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "marcobaxter@example.com", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "alanbarron@example.org", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "falexander@example.org", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "btrujillo@example.org", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "jaimeware@example.net", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "isabellasantos@example.net", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "blackjonathon@example.org", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "foneal@example.com", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "urobinson@example.net", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "alisonwallace@example.net", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "roberto61@example.net", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "haasjade@example.com", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "shari97@example.com", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "maddentricia@example.com", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "prattivan@example.com", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "hmcknight@example.com", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "cynthiagibbs@example.com", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "glen89@example.com", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "torresmeredith@example.org", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "karenmccoy@example.net", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "tammy76@example.com", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "taylorjessica@example.org", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "ericksonkatherine@example.net", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "gutierrezcarlos@example.com", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "victoria39@example.org", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "jamesdiaz@example.net", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "owenclark@example.com", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "deniserobinson@example.org", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "patriciacollins@example.net", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "xjohnson@example.com", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "hroberts@example.org", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "george47@example.com", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "sharon56@example.net", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "carterbrian@example.org", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "kellyfrank@example.com", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "jonesnicholas@example.net", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "susanwalker@example.org", "subject" => "Greetings", "body" => "Hello, User 1!"},
        %{"to" => "sanchezjose@example.com", "subject" => "Greetings", "body" => "Hello, User 1!"}


      # Add more emails as needed
    ]

    Enum.each(emails_to_send, fn email ->
      email
      |> TauspaceOban.Workers.Emailjob.new()
      |> Oban.insert()
    end)
  end
end
