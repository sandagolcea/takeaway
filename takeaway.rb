require 'csv'
require './lib/menu'
require './lib/dish'

def create_menu
  menu = Menu.new "Main Menu"

  CSV.foreach('main_menu.csv') do |line|
    dish = Dish.new(line[0], line[1])
    menu.add(dish)
  end
  menu.dishes.each {|dish| p dish.name}
end

create_menu