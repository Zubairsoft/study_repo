require_relative '../interface/notification'
module Twilio
  class Sms
    include Interface::Notification

    def send(message)
      puts "Sending SMS via Twilio: #{message}"
    end
  end
end