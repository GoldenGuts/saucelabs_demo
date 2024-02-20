require_relative 'base_page'

class CartPage < BasePage
  button(:continue_shopping, id: 'continue-shopping')
  divs(:product_names, class: 'inventory_item_name') # Use divs for multiple elements
  buttons(:remove, class: 'cart_button')

  def product_names_list
    product_names_elements.map(&:text) # Use _elements with pluralized element definition
  end

  def remove_product_by_name(product_name)
    product_index = product_names_list.index(product_name)
    remove_elements[product_index].click if product_index # Use _elements for collections
  end
end
