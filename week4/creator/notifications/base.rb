module Creator
  module Notifications
    class Base

      def create_notification
        raise NotImplementedError, 'method not implemented'
      end

      def send_notification(message)
        create_notification.send(message)
      end
    end
    
  end
end
