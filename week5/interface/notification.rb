module Interface
  module Notification
    def send(message)
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end
  end
end