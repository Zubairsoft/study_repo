module Notification
  class Base
    def notify()
      raise NotImplementedError, 'You must implement the notify method'
    end
  end
end
