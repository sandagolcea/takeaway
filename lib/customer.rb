class Customer
  
  attr_reader :name

  def initialize name
    @name = name
  end

  # place the order by giving: 
  # * the list of dishes
  # * their quantities
  # * a number that should be the exact total 
  def place_order(dish, quantity, total)
    
  end

end

##Customer
#     Responsibility   |  Collaborators
# ---------------------|-------------------
# has_name             |  -
# has_email            |  - 
# place order          | Order, Dish
# pay for order        | Order, Dish
# (cancel order)       | (Order, Dish)
