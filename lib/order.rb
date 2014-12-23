class Order

def initialize
 @payed = false
end

def payed?
  @payed
end

def pay!
  @payed = true
end


end

##Order
#     Responsibility   |  Collaborators
# ---------------------|-------------------
# accept_order         |  Customer, Dish, Menu
# is_payed?            |  Customer