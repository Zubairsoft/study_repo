require_relative 'base'

module Bridge 
  module Notifications
    class Alert < Base

      def notify(message)
        puts 'Sending ALERT '+ super(message)
      end
    end
  end
end
