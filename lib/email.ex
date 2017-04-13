defmodule EmailTest.Email do
  use Bamboo.Phoenix, view: EmailTest.EmailView

  def derp_email(email_address) do
    new_email(
      to: [email_address],
      from: "rhys.m.stansfield@gmail.com",
      subject: "Derp!",
      text_body: "Sent from Elixir app endpoint! :O:O:O"
    ) |> put_attachment(Path.expand("~/Downloads/pepe.jpg"))
  end
end
