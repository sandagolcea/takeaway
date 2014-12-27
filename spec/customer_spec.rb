require 'customer'

describe Customer do
  
  let(:customer){Customer.new("Sanda", "07474992321")}

  it 'should have a name' do
    expect(customer.name).to eq "Sanda"
  end

  it 'should have a phone address' do
    expect(customer.phone).to eq "07474992321"
  end

end