require_relative './base'

module Notifications
  class SmsNotifier < Base
    def send(message)
      puts "Sending SMS Notification: #{message}"
    end
  end
end
