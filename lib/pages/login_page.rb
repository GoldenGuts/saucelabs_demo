require_relative 'base_page'

class LoginPage < BasePage
  include PageObject

  # Define the page URL if you want to navigate directly to the LoginPage
  page_url "https://www.saucedemo.com/"

  # Elements
  text_field(:username, id: 'user-name')
  text_field(:password, id: 'password')
  button(:login_button, name: 'login-button')

  # This method encapsulates the login action
  def login_as(user, pass)
    self.username = user
    self.password = pass
    login_button
  end
end
