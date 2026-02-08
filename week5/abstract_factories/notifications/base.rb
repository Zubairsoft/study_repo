module AbstractFactories
  module Notifications
    class Base
      def create_email()
        raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
      end
      
      def create_sms()
        raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
      end
    end
  end
end
