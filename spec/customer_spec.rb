require 'customer'

describe Customer do
  let(:menu1){double :menu}
  menus = [:menu1]
  
  let(:customer){Customer.new("Sanda", menus)}

  it 'should have a name' do
    expect(customer.name).to eq "Sanda"
  end

  # xit 'should have an email address' do
  # end

  it 'should be able to place an order' do
    #TODO: make order
  end

  it 'should be able to pay for his order' do
  end

end