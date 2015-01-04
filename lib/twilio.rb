require 'twilio-ruby'

module Twilio

  def send_message
    account_sid = ENV['ACCOUNT_SID']
    auth_token = ENV['AUTH_TOKEN']

    client = Twilio::REST::Client.new account_sid, auth_token
     
    from = ENV['FROM']
    receiver = ENV['RECEIVER']

    client.account.messages.create(
      :from => from, 
      :to => receiver,
      :body => "Your pizza should be ready at #{(Time.now + 3600).strftime '%R'}"
      )
    puts "Sent message to #{receiver}"
    true
  end

  def sent?
    # send_message
    puts "true"
  end

end