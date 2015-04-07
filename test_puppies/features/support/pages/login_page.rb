class LoginPage
  include PageObject

  text_field(:username, :id => "user_id")
  text_field(:password, :id => "user_password")
  button(:login, :id => "Login")

end