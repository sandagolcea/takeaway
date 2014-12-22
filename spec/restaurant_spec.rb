require 'restaurant'

describe Restaurant do
  let(:restaurant){Restaurant.new "Resto"}

  it 'should have a name' do
    expect(restaurant.name)
  end

  it 'should have at least a menu' do
  end

  it 'should have a list of orders' do
  end

  it 'should confirm orders' do
  end
end