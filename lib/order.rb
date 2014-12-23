class Order

  def initialize
   @payed = false
   # @order_dishes = []
  end

  def payed?
    @payed
  end

  def pay!
    @payed = true
  end

  # def add(dish, menu)
    # adds dishes to the order
    # do not accept dishes that are not on the menu
    # @order_dishes << dish if menu.find(dish)
      # maybe create a meth for this in menu?
      # or do it inside takeaway.rb:
      # if menu.find?(dish_name) order.add(dish)
  # end

  # def place_order(order_dishes,total)
  # end

  # def valid?

  # end

end

##Order
#     Responsibility   |  Collaborators
# ---------------------|-------------------
# accept_order         |  Customer, Dish, Menu
# is_payed?            |  Customer