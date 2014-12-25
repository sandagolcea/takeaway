require 'csv'
require './lib/menu'
require './lib/dish'
require './lib/customer'
require './lib/order'
require './lib/restaurant'

menus = []

@menu = Menu.new "Main Menu"
menus << @menu
filename = 'main_menu.csv'
@menu.create_menu(filename)

@restaurant = Restaurant.new("Resto",menus)
@customer = Customer.new("Customer", menus)

@restaurant.menus.each {|menu| menu.show_menu}

# @restaurant.take_order(customer)
# @customer.show_order