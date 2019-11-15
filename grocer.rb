def find_item_by_name_in_collection(name, collection)
  index = 0 
  while index < collection.length do 
    my_hash = collection[index]
    my_item = my_hash[:item]
    if name == my_item
      return my_hash
    end
    index += 1 
  end
  return nil
end

def consolidate_cart(cart)
  index = 0 
  new_cart = []
  while index < cart.length do 
    cart_item = cart[index]
    cart_item_name = cart_item[:item]
    return_value = find_item_by_name_in_collection(cart_item_name, new_cart)
    if return_value == nil 
      cart_item[:count]=1
      new_cart << cart_item
    else
      return_value[:count]+=1 
    end 
    index += 1 
  end 
  new_cart
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
end

def apply_coupons(cart:[], coupons:[])
  result = {}
  cart.each do |my_item, info|
    coupons.each do |coupon|
      if my_item == coupon[:item] && info[:count] >= [:num]
        info[:count] = info[:count] - coupon[:num]
        if result["#{my_item} W/COUPON"]
          result["#{my_item} W/COUPON"][:count] += 1 
        else 
          result ["#{my_item} W/COUPON"] = [:price => coupon[:cost], :clearance => info [:clearance], :count]
  
#   index = 0 
#   new_array = []
#   while index < cart.length do
#     if 
#       coupon_name = coupons[index]
    
#     find_item_by_name_in_collection(coupons[index], cart)
    
    
    
    
  
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
# end

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
