require 'twilio-ruby'

module Twilio

  def client(env)
    @client ||= create_twilio_client(env)
  end

  def create_twilio_client(env)
    account_sid = env['ACCOUNT_SID']
    auth_token = env['AUTH_TOKEN']
    Twilio::REST::Client.new account_sid, auth_token
  end

  def send_message(receiver, env, client_messages=nil)
    client_messages = client(env).account.messages unless client_messages
    from = env['FROM'] 
    # for predef numbers add: receiver = ENV['RECEIVER']
    # or change from the main takeaway.rb (recommended)

    client_messages.create(
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