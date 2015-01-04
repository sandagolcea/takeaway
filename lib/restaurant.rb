require_relative 'twilio'

class Restaurant 
  
  include Twilio

  attr_reader :name
  
  def initialize(name)
    @name = name
  end

  def take_order(order, total)
    raise "You forgot to pay!" if order.total != total
    order.pay! 
    # TODO : send Twilio sms if successful
    # self.sent?
  end

end