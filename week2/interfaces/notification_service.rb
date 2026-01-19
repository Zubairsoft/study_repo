module Interfaces
  module NotificationService

    def attach(observer)
      raise NotImplementedError, "This #{self.class} cannot respond to:" 
    end 

    def detach(observer)
      raise NotImplementedError, "This #{self.class} cannot respond to:" 
    end

    def notify
     raise NotImplementedError, "This #{self.class} cannot respond to:" 
    end
  end
end
