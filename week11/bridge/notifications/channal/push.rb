require_relative 'base'

module Bridge
  module Notifications
    module Channal
      class Push < Base
        def send(message)
          return "push: #{message}"
        end
      end
    end
  end
end