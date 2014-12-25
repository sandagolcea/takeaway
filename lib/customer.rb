class Customer
  
  attr_reader :name, :order

  def initialize(name, menus)
    @name = name
    @menus = menus
  end

  # place the order by giving: 
  # * the list of dishes
  # * their quantities
  # * a number that should be the exact total 
  def create_order
 
    @order = Order.new
    
    add_dish = true
    while(add_dish) do
      
      puts "What dish would you like?"
      dish_name = gets.chomp
      
      ( dish = get_by_name(dish_name) ) != nil ? ( @order.add_item << dish ) : (p "we don't have that dish!")

      print "Add another dish? (y/n) : "
      (gets.chomp == "y" ) ? add_dish = true : add_dish = false
    end
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
