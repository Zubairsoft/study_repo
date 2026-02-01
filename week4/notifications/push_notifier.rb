require_relative './base'

module Notifications
  class PushNotifier < Base
    def send(message)
      puts "Sending Push Notification: #{message}"
    end
  end
end
