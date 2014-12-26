class Order

  def initialize
   @payed = false
   @customer_order = {}
  end

  def payed?
    @payed
  end

  def pay!
    @payed = true
  end

  def add_item(item, qty=1)
    @customer_order.include?(item) ? @customer_order[item] += qty : @customer_order[item] = qty
  end

  def total
    @customer_order.map {|key,value| key.price * value }.inject(0) { |memo, val| memo + val }
  end

  # def show_order
  #   @customer_order.each {|dish| puts dish.name}
  # end

  def empty?
    @customer_order.size == 0
  end

end
