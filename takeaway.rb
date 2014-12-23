require 'csv'
require './lib/menu'
require './lib/dish'
require './lib/customer'

def create_menu
  @menu = Menu.new "Main Menu"

  CSV.foreach('main_menu.csv') do |line|
    dish = Dish.new(line[0], line[1].to_i)
    @menu.add(dish)
  end
  @menu.dishes
end

def show_menu
  @menu.dishes.each {|dish| p dish.name}
end

def take_order
  @customer_order = []
  customer = Customer.new "Customer"
  
  add_dish = true
  while(add_dish) do
    
    puts "What dish would you like?"
    dish_name = gets.chomp
    ( curr_dish = @menu.get_by(dish_name) ) != nil ? ( @customer_order << curr_dish ) : (p "we don't have that dish!")
    

    print "Add another dish? (y/n) : "
    (gets.chomp == "y" ) ? add_dish = true : add_dish = false
  end
  total = @customer_order.inject(0) {|memo,dish| memo + dish.price } 
  p total
end

def show_order
  @customer_order.each {|dish| p dish.name}
end

create_menu
show_menu

take_order
show_order