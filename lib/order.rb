class Order

  def initialize
   @payed = false
   @customer_order = []
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

  def add(dish_name, menu)
    ( curr_dish = menu.get_by(dish_name) ) != nil ? ( @customer_order << curr_dish ) : (p "we don't have that dish!")
  end

  def total
    @customer_order.inject(0) {|memo,dish| memo + dish.price } 
  end
  # def place_order(order_dishes,total)
  # end

  # def valid?

  # end

  def show
    @customer_order.each {|dish| puts dish.name}
  end

end

##Order
#     Responsibility   |  Collaborators
# ---------------------|-------------------
# accept_order         |  Customer, Dish, Menu
# is_payed?            |  Customer