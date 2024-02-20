require_relative '../lib/pages/login_page'
require_relative '../lib/pages/products_page'
require_relative '../lib/pages/cart_page'
require 'watir'
require 'rspec'

describe 'Product Cart Workflow' do
  before(:all) do
    @browser = Watir::Browser.new :chrome
    @login_page = LoginPage.new(@browser)
    @products_page = ProductsPage.new(@browser)
    @cart_page = CartPage.new(@browser)
  end

  before(:each) do
    @login_page.goto
    @login_page.login_as('standard_user', 'secret_sauce')
    @products_page.wait_until { |page| page.span(class: 'title').text == "Products" }
  end

  after(:all) { @browser.close }

  it 'adds 3 products, validates them, removes 1, and validates removal' do
    # Names of products to add (adjust these based on the actual product names on the page)
    product_names_to_add = ["Sauce Labs Backpack", "Sauce Labs Bike Light", "Sauce Labs Bolt T-Shirt"]
    product_names_to_add.each { |name| @products_page.add_product_to_cart_by_name(name) }
    
    @products_page.goto_cart
    expect(@cart_page.product_names_list).to match_array(product_names_to_add)

    # Remove one product and validate
    product_to_remove = "Sauce Labs Bike Light"
    @cart_page.remove_product_by_name(product_to_remove)

    expected_products_after_removal = product_names_to_add - [product_to_remove]
    expect(@cart_page.product_names_list).to match_array(expected_products_after_removal)
    sleep 5
  end
end
