class Menu

  attr_reader :name, :dishes

  def initialize name
    @name = name
    @dishes = []
  end

  def add(dish)
    @dishes << dish
  end
  
  def remove(dish)  
    @dishes.delete(dish)
  end

  def remove_by_name(dish_name)  
    @dishes.delete_if { |d| d.name == dish_name }
  end

  def exists?(dish_name)
    @dishes.any? { |d| d.name == dish_name }
  end

  def get_by_name(dish_name)
    @dishes.select { |d| d.name == dish_name }.first
  end

  def create_menu(filename)
    
    CSV.foreach(filename) do |line|
      dish = Dish.new(line[0], line[1].to_i)
      add(dish)
  end

  def show_menu
    @dishes.map {|dish| dish.name}
  end

end


end