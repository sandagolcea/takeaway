class Customer
  
  attr_reader :name, :phone

  def initialize(name, phone)
    @name = name
    @phone = phone
  end

    # add_dish = true
    # while(add_dish) do
      
    #   puts "What dish would you like?"
    #   dish_name = gets.chomp
      
    #   ( dish = get_by_name(dish_name) ) != nil ? ( @order.add_item << dish ) : (p "we don't have that dish!")

    #   print "Add another dish? (y/n) : "
    #   (gets.chomp == "y" ) ? add_dish = true : add_dish = false
    # end

end

##Customer
#     Responsibility   |  Collaborators
# ---------------------|-------------------
# has_name             |  -
# has_email            |  - 
# place order          | Order, Dish
# pay for order        | Order, Dish
# (cancel order)       | (Order, Dish)
