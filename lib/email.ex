defmodule EmailTest.Email do
  use Bamboo.Phoenix, view: EmailTest.EmailView

  def derp_email(email_address) do
IO.puts(email_address)
    new_email(
      to: email_address,
      from: "rhys.m.stansfield@gmail.com",
      subject: "Derp!",
      text_body: "This is demonstrating stuff"
    )
  end
end
