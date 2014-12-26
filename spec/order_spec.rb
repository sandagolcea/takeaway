require 'order'

describe Order do
  let(:order) { Order.new }
  let(:dish) { double :dish, price: 10 }
  let(:dish_two) { double :dish, price: 20 }

  it 'should not have any dishes ordered by default' do
    expect(order).to be_empty
  end

  it 'should not be payed by default' do
    expect(order.payed?).to eq false
  end

  it 'can be payed' do
    order.pay!
    expect(order.payed?).to eq true
  end

  it 'should have a list of dishes ordered, with quantity' do
    order.add_item(dish)
    expect(order).to_not be_empty
  end

  it 'should calculate the total' do
    order.add_item(dish,3)
    order.add_item(dish_two,2)
    expect(order.total).to eq 70
  end

end