module Interfaces
  module NotificationObserver
    def update(message)
      raise NotImplementedError, "This #{self.class} cannot respond to:"
    end
  end
end
