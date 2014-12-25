class Order

  def initialize
   @payed = false
   @customer_order = []
  end

  def payed?
    @payed
  end

  def pay!
    @payed = true
  end

  def add_item(item, qty=1)
    @customer_order << item
    # where item is either dish or drink
    # TODO:  add qty to the logic. hash.
  end

  def total
    @customer_order.inject(0) {|memo,dish| memo + dish.price } 
  end

  def show_order
    @customer_order.each {|dish| puts dish.name}
  end

end
