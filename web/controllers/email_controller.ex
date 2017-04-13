defmodule EmailTest.EmailController do
  use EmailTest.Web, :controller

  def create(conn, %{ "email_address" => email_address }) do
    EmailTest.Email.derp_email(email_address)
    |> EmailTest.Mailer.deliver_now
    render(conn, "create.json")
  end
end
