require_relative '../interface/notification'

module Aws
  class Email
    include Interface::Notification

    def send(message)
      puts "Sending email via AWS: #{message}"
    end
  end

end
