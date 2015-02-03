require 'takeaway'

describe Takeaway do
  let(:takeaway) {Takeaway.new}

  it 'should get an order' do
    # TODO: get order - getting stdin in rspec?
    # expect(takeaway.get_order(STDIN)).to eq ["Sushi","Ice Tea" etc] 
  end
end