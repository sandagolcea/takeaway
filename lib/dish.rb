class Dish
  attr_reader :name, :price

  def initialize(name, price=0)
    @name = name
    @price = price
  end

  def update(name=nil, price=nil)
    (price = name ; name = nil) if name.is_a?(Fixnum)

    name ? @name = name : @name = self.name
    price ? @price = price : @price = self.price
  end
  
# TODO: every dish should be a hash with name && price
end
