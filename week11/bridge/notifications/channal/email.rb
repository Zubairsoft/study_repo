require_relative 'base'

module Bridge
  module Notifications
    module Channal
      class Email < Base
        def send(message)
          return "email: #{message}"
        end
      end
    end
  end
end