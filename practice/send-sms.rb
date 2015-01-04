require 'rubygems'
require 'twilio-ruby'
 
account_sid = ENV['ACCOUNT_SID']
auth_token = ENV['AUTH_TOKEN']

client = Twilio::REST::Client.new account_sid, auth_token
 
from = ENV['FROM']  # Your Twilio number
receiver = ENV['RECEIVER']# A receiver number (can be your verified number)
 
friends = {
  receiver => "Sandy"
}

def send_message
# To send a message to all the friends in the list:
  friends.each do |key, value|
    client.account.messages.create(
      :from => from,
      :to => key,
      :body => "Hello #{value}, your food will arrive soon!"
    )
    puts "Sent message to #{value}"
  end
end

def make_a_call
# To make a call to a verified number
  client.account.calls.create(
      :from => from,
      :to => receiver,
      :url => 'http://twimlets.com/holdmusic?Bucket=com.twilio.music.rock'
      )
end

def music_menu
# A twimlet that I've created from https://www.twilio.com/labs/twimlets/menu
# It reads a message and if you press 3 it plays guitar music for you:
# message : "Welcome. Press one for piano music press two for guitar music."
  client.account.calls.create(
  :from => phone_number,
  :to => receiver,
  :url => 'http://twimlets.com/menu?Message=Welcome.%20Press%20one%20for%20piano%20music%20press%20three%20for%20guitar%20music.&Options%5B1%5D=http%3A%2F%2Ftwimlets.com%2Fholdmusic%3FBucket%3Dhttp%253A%252F%252Fstatic.squarespace.com%252Fstatic%252F5441956ee4b06e8b47db9e52%252F5442da63e4b0b8e2e81f79ab%252F5442e322e4b06e8b47dd6dd4%252F1413670486331%252F2.mp3%26&Options%5B3%5D=http%3A%2F%2Ftwimlets.com%2Fholdmusic%3FBucket%3Dcom.twilio.music.rock&'
  )
end