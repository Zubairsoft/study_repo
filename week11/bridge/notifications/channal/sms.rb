require_relative 'base'

module Bridge
  module Notifications
    module Channal
      class Sms < Base
        def send(message)
          return "SMS: #{message}"
        end
      end
    end
  end
end