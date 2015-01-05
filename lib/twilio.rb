require 'twilio-ruby'

module Twilio

  def send_message(receiver)
    account_sid = ENV['ACCOUNT_SID']
    auth_token = ENV['AUTH_TOKEN']

    client = Twilio::REST::Client.new account_sid, auth_token
     
    from = ENV['FROM'] 
    # for predef numbers add: receiver = ENV['RECEIVER']
    # or change from the main takeaway.rb (recommended)

    client.account.messages.create(
      :from => from, 
      :to => receiver,
      :body => "Thank you! Your order was placed and will be delivered before #{(Time.now + 3600).strftime '%R'}"
      )
    puts "Sent message to #{receiver}"
    true
  end

  def sent?
    send_message
  end

end