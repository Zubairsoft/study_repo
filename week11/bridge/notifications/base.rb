module Bridge 
  module Notifications
    class Base
      attr_reader :channal

      def initialize(channal)
        @channal = channal
      end

      def notify(message)
        @channal.send(message)
      end
    end
  end
end
