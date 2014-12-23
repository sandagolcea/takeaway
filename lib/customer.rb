class Customer
  
  attr_reader :name

  def initialize name
    @name = name
    @ordered_dishes = []
  end

  # place the order by giving: 
  # * the list of dishes
  # * their quantities
  # * a number that should be the exact total 
  def place_order(ordered_dishes, total)
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
