class Restaurant 

  attr_reader :name, :menus
  
  def initialize(name,menus)
    @name = name
    @menus = []
    @customers = []
  end

  def take_order(customer)
    customer.place_order
    @customers << customer
  end

  private

  def get_by_name(dish_name)
    @menus.each do |menu|
      curr_dish = menu.get_by_name(dish_name)
      return curr_dish if curr_dish != nil
    end
  end

end