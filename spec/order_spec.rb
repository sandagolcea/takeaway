require 'order'

describe Order do
  let(:order){Order.new}

  it 'should not be payed by default' do
    expect(order.payed?).to eq false
  end

  it 'can be payed' do
    order.pay!
    expect(order.payed?).to eq true
  end

  it 'should have a list of dishes ordered, with quantity' do
  end


  it 'should accept a valid order' do
  end

  it 'should deny an invalid order' do
  end


end