require 'dish'

describe Dish do
  let(:dish){Dish.new("Carbonara", 100)}
  let(:lasagna){Dish.new("Lasagna")}

  it 'has a name' do
    expect(dish.name).to eq "Carbonara"
  end

  it 'should have price set to 0 by default' do
    expect(lasagna.price).to eq 0
  end

  it 'has a price' do
    expect(dish.price).to eq 100
  end

  it 'can be updated' do
    dish.update("Spaghetti Carbonara",50)
    expect(dish.name).to eq "Spaghetti Carbonara"
    expect(dish.price).to eq 50
  end

  it 'can have only the name updated' do
    dish.update("Spaghetti Bolognese")
    expect(dish.name).to eq "Spaghetti Bolognese"
    expect(dish.price).to eq 100
  end

  it 'can have only the price updated' do
    dish.update(50)
    expect(dish.name).to eq "Carbonara"
    expect(dish.price).to eq 50
  end

end