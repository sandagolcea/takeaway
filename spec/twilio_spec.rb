require 'twilio'

class Message; include Twilio; end

describe Twilio do 

  let(:message) {Message.new}

  it 'should be able to send a message to confirm order' do
    allow(message).to receive(:send_message) { true }
    expect(message).to be_sent
  end

end