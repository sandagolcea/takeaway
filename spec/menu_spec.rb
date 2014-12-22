require 'menu'

describe Menu do
  let(:menu){Menu.new "Main"}
  let(:dish){double :dish, name: "Lasagna"}
  let(:dish_two){double :dish, name: "Sushi"}
  
  it 'should have a name' do
    expect(menu.name).to eq "Main"
  end

  it 'should not have any dish by default' do
    expect(menu.dishes.size).to eq 0
  end

  it 'should accept new dishes' do
    menu.add(dish)
    expect(menu.dishes.size).to eq 1
  end

  it 'should be able to remove dishes by name' do
    menu.add(dish)
    menu.add(dish_two)
    expect(menu.dishes.size).to eq 2
    # menu.remove(dish_two)
    menu.remove_by_name("Lasagna")
    expect(menu.dishes.size).to eq 1
  end

  it 'should be able to remove dishes by passing a dish object' do
    menu.add(dish)
    menu.add(dish_two)
    expect(menu.dishes.size).to eq 2
    # menu.remove(dish_two)
    menu.remove(dish_two)
    expect(menu.dishes.size).to eq 1
  end

  it 'should know if it has a dish' do
    menu.add(dish)
    menu.add(dish_two)
    expect(menu.find?("Sushi")).to eq true
  end

  it 'should know if it does not have a dish' do
    menu.add(dish)
    menu.add(dish_two)
    expect(menu.find?("Coq au vin")).to eq false
  end

end