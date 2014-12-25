require 'restaurant'

describe Restaurant do
  let(:menu1) {double :menu}
  let(:menu2) {double :menu}
  menus = [:menu1, :menu2]
  let(:restaurant){Restaurant.new("Resto", menus)}

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