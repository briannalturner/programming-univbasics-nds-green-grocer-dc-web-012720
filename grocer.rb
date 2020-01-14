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
    
    new_item = find_item_by_name_in_collection(item_name, new_cart)
    if new_item
      new_item[:count] += 1
    else
      new_item = {
        :item => cart[index][:item],
        :price => cart[index][:price],
        :clearance => cart[index][:clearance],
        :count => 1
      }
      new_cart << new_item
    end
    
    index += 1 
  end


  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
  new_cart
end

def apply_coupons(cart, coupons)
  new_arr = []
  index = 0 
  
  while index < coupons.length do
    item_name = coupons[index][:item]
    
    cart_item = find_item_by_name_in_collection(item_name, coupons)
    couponed_item = "#{coupons[index][:item]} W/ COUPON"
    cart_item_with_coupon = find_item_by_name_in_collection(couponed_item, cart)
    if cart_item && cart_item[:count] >= cou
      
        
        
    index += 1 
  end
  
  
  
  # REMEMBER: This method **should** update cart
  
  new_arr
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
