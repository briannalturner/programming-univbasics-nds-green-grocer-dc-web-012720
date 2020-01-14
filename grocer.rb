def find_item_by_name_in_collection(name, collection)
  index = 0 
  
  while index < collection.length do 
    if name != collection[index][:item]
      index +=1
    else
      return collection[index]
    end
  end
end

def consolidate_cart(cart)
  new_cart = []
  index = 0 
  
  while index < cart.length do 
    item_name = cart[index][:item]
    
    if find_item_by_name_in_collection(item_name, new_cart)
      new_cart << cart[index][:item]
      new_cart.last[:count] += 1
    
    end
    index += 1 
  end


  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
  puts new_cart
end


test_cart = [
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "KALE", :price => 3.00, :clearance => false}
]
puts consolidate_cart(test_cart)

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
