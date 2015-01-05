
##TWILIO

This is a practice folder for working with twilio.
If you want to run any of the files here, make sure you have an account with them:
`https://www.twilio.com/`

####You will need:

* A verified number(your phone nr), a twilio number from their site.
* An account id (ACXXX) with an auth token (90XXX).
* to install the twilio gem:  
`gem install ruby-twilio`

####Links:

* RTFM:  
  `https://media.readthedocs.org/pdf/twilio-ruby/latest/twilio-ruby.pdf`

* To create a twimlet:  
  `https://www.twilio.com/labs/twimlets/menu`

####Files:

* For a hold music bucket content see:
  twilio_hold_music.xml

* To run the sms.rb file:  
  Change the variables as explained in the file
  Run file: `ruby sms.rb`  
  You should now receive a message from twilio on your verified number.  

* To run send-sms.rb  
  Export the following env vars:   
  `ACCOUNT_SID, AUTH_TOKEN, FROM, RECEIVER`  
  with your own information. 

  *FYI:*  
  *I have them in a .env file, like "export FROM="123" and then run it in the cmd line with ". .env"*  

  Select one of the options:  
    - send message  
    - make a call (puts music)  
    - music_menu - lets you choose 3 for guitar music (option 1 not working)  

    <!-- btw: time in shell # date -v +1H +"%R" = 1h from now -->
