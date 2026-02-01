require_relative './base'

module Notifications
  class EmailNotifier < Base
    def send(message)
      puts "Sending Email Notification: #{message}"
    end
  end
end
