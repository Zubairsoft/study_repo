require_relative '../interface/notification'

module Aws
  class Sms
    include Interface::Notification

    def send(message)
      puts "Sending SMS via AWS: #{message}"
    end
  end

end
  