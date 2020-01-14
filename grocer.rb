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
    inner_index = 0 
    
    #iterate over new cart to see if anything matches
    while inner_index < new_cart.length do
      if new_cart[inner_index][:item] == cart[index][:item]
        new_cart[inner_index][:count] += 1 
      end
      inner_index+= 1 
    end
    if new_cart[0][:item] != cart[index][:item]
      new_cart[index] = cart[index]
      new_cart[index][:count] = 1
    end
       
    index += 1 
  end


  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
  new_cart
end


test_cart = [
        { :item => "DOG FOOD" },
        { :item => "WINE" },
        { :item => "DOG FOOD" },
        { :item => "STRYCHNINE" }
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
