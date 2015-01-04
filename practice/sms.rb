# This file does not run unless you complete it with your own information.
require 'rubygems'
require 'twilio-ruby'

@account_sid = 'ACXXX' # your twilio account sid here
@auth_token = '90XXX' # your authorized token here

# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new(@account_sid, @auth_token)


@account = @client.account
@message = @account.sms.messages.create(
  {:from => '+44XXX', # your twilio number here
  :to => '+44XXX', # your verified number here
  :body => 'OK '})
puts @message