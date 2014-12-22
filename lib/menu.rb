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

  def find?(dish_name)
    @dishes.any? { |d| d.name == dish_name }
  end

end