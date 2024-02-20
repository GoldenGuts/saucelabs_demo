# lib/pages/base_page.rb

require 'page-object'
class BasePage
  include PageObject

  def initialize(browser)
    @browser = browser
    super(browser)
  end
end
