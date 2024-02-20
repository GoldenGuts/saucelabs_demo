# lib/pages/products_page.rb
require_relative 'base_page'

class ProductsPage < BasePage

  divs(:products, class: 'inventory_item')
  span(:cart, class: 'shopping_cart_badge')

  def add_product_to_cart_by_name(product_name)
    # Find the product div that includes the specified product name
    product_element = products_elements.find { |div| div.text.include? product_name }
    
    if product_element
      add_to_cart_button = product_element.button(class: 'btn_inventory')
      add_to_cart_button.click if add_to_cart_button.exists?
    end
  end
  

  def goto_cart
    cart_element.click
  end
end
