require 'csv'
require './lib/menu'
require './lib/dish'
require './lib/customer'
require './lib/order'

def create_menu
  @menu = Menu.new "Main Menu"

  CSV.foreach('main_menu.csv') do |line|
    dish = Dish.new(line[0], line[1].to_i)
    @menu.add(dish)
  end
  @menu.dishes
end

def show_menu
  @menu.dishes.each {|dish| puts dish.name}
end

def take_order
    @order = Order.new
    add_dish = true
    while(add_dish) do
      
      puts "What dish would you like?"
      dish_name = gets.chomp
      
      @order.add(dish_name, @menu)

      print "Add another dish? (y/n) : "
      (gets.chomp == "y" ) ? add_dish = true : add_dish = false
    end
end

def show_order
  @order.show
end

create_menu
show_menu

take_order
show_order
