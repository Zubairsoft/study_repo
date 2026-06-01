require_relative 'base'

module Bridge 
  module Notifications
    class Reminder < Base
      def notify(message)
        puts 'Sending Reminder '+ super(message)
      end
    end
  end
end
