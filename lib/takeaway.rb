require 'csv'
require './lib/menu'
require './lib/dish'
require './lib/customer'
require './lib/order'
require './lib/restaurant'

class Takeaway
  
  def initialize
    @env = {
       'ACCOUNT_SID' => ENV['ACCOUNT_SID'],
       'AUTH_TOKEN' => ENV['AUTH_TOKEN'],
       'FROM' => ENV['FROM'],
       'RECEIVER' => ENV['RECEIVER']
        }
  end

  def print_menus(menus)
    menus.each {|menu| puts menu.to_string }
  end

  def get_order(input)
    add_dish = true
    dish_names_list = []

    while(add_dish) do

      puts "What dish would you like?"
      dish_name = gets.chomp

      dish_names_list << dish_name

      print "Add another dish? (y/n) : "
      (input.gets.chomp == "y" ) ? add_dish = true : add_dish = false
    end

    dish_names_list
  end

  def enter_payment(order,customer,input)
    puts "Hi, #{customer.name}, your total is #{order.total}"
    puts "Enter the amount you'd like to pay:"
    customer_payment = input.gets.chomp.to_i
  end

  def take_order(restaurant, order, customer, input)
    restaurant.take_order(order, enter_payment(order, customer, input))
    restaurant.send_message(customer.phone,@env)
  end

  ## ***START***

  def run(input)
    menus = []

    menu = Menu.new "Main Menu"
    menus << menu
    filename = 'main_menu.csv'
    menu.create_menu(filename)

    restaurant = Restaurant.new("Resto")


    puts "Customer Name: " ; customer_name = input.gets.chomp
    puts "Customer Phone: " ; phone = input.gets.chomp

    # In case you already have a predefined phone number:
    # phone = env['RECEIVER']

    customer = Customer.new(customer_name, phone)
    order = Order.new(menus)

    print_menus(menus)

    order.populate_order(get_order(input))
    take_order(restaurant, order, customer, input)
  end
end
