require 'twilio'

class Message; include Twilio; end

describe Twilio do 

  let(:message) {Message.new}
  let(:client) { double :client }
  let(:env) { {"FROM" => "1234", "TO" => "2345"} }

  it 'should be able to send a msg vers Henry' do
    payload = { :from => env["FROM"], :to => env["TO"], :body => "Thank you! Your order was placed and will be delivered before #{(Time.now + 3600).strftime '%R'}" }
    expect(client).to receive(:create).with(payload)
    m = Message.new
    m.send_message("2345", env, client)
  end

end