require_relative '../interface/notification'
module Twilio
  class Email
    include Interface::Notification

    def send(message)
      puts "Sending email via Twilio: #{message}"
    end
  end
end