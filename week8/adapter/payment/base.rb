module Adapter
  module Payment
    class Base

      def process(amount)
        raise NotImplementedError, "Subclasses must implement the process method"
      end

    end
  end
end