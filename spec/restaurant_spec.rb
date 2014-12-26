require 'restaurant'

describe Restaurant do

  let(:restaurant) { Restaurant.new("Resto") }
  let(:order) { double :order }

  it 'should have a name' do
    expect(restaurant.name)
  end

  it 'take and order and raise an error if you did not pay' do
    allow(order).to receive(:total).and_return(100)
    
    expect{restaurant.take_order(order,99)}.to raise_error(RuntimeError,"You forgot to pay!")
  end

  it 'should make the order payed if customer payed' do
    allow(order).to receive(:total).and_return(100)    
    expect(order).to receive(:pay!)
    restaurant.take_order(order,100)
  end

  xit 'should send a twilio message' do
  end

end