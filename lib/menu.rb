class Menu

  attr_reader :name, :dishes

  def initialize name
    @name = name
    @dishes = []

  end

  def add(dish)
    @dishes << dish
  end

  def remove(dish_name)  
    # TODO: should I remove dish by name or pass the object? @dishes.delete(dish)
    @dishes.delete_if { |d| d.name == dish_name }
  end

  def find?(dish_name)
    @dishes.any? { |d| d.name == dish_name }
  end

end