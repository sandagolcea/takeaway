class Customer
  
  attr_reader :name, :phone

  def initialize(name, phone)
    @name = name
    @phone = phone
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
