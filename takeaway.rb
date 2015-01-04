require 'csv'
require './lib/menu'
require './lib/dish'
require './lib/customer'
require './lib/order'
require './lib/restaurant'

def print_menus(menus)
  menus.each {|menu| puts menu.to_string }
end

def get_order
  add_dish = true
  dish_names_list = []
  while(add_dish) do

    puts "What dish would you like?"
    dish_name = gets.chomp

    dish_names_list << dish_name

    print "Add another dish? (y/n) : "
    (gets.chomp == "y" ) ? add_dish = true : add_dish = false
  end
  dish_names_list
end

def enter_payment(order,customer)
  puts "Hi, #{customer.name}, your total is #{order.total}\n Enter the amount you'd like to pay:"
  customer_payment = gets.chomp.to_i
end

def take_order(restaurant, order, customer)
  restaurant.take_order(order, enter_payment(order, customer))
  restaurant.send?
end

menus = []

menu = Menu.new "Main Menu"
menus << menu
filename = 'main_menu.csv'
menu.create_menu(filename)

restaurant = Restaurant.new("Resto")


puts "Customer Name: " ; customer_name = STDIN.gets.chomp
puts "Customer Phone: " ; phone = STDIN.gets.chomp
customer = Customer.new(customer_name, phone)
order = Order.new(menus)

print_menus(menus)

order.populate_order(get_order)
take_order(restaurant, order, customer)

# @customer.show_order