class Order

  def initialize(menus)
   @payed = false
   @customer_order = {}
   @menus = menus
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

  def empty?
    @customer_order.size == 0
  end

  def populate_order(dish_names)
    dish_names.each do |dish_name|
      dish = get_by_name(dish_name)
      if dish != nil
        add_item(dish)
      end
    end
  end


  private

  def get_by_name(dish_name)
    @menus.each do |menu|
      curr_dish = menu.get_by_name(dish_name)
      return curr_dish if curr_dish != nil
    end
    nil
  end

end
