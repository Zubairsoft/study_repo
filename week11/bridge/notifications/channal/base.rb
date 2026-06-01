module Bridge
  module Notifications
    module Channal
      class Base
        def send(message)
          raise NotImplemented
        end
      end
    end
  end
end