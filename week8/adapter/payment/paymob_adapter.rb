require_relative 'base'
require_relative '../../gateway/paymob_gateway'

module Adapter
  module Payment
    class PaymobAdapter < Base
      def process(amount)
        PaymobGateway.new.pay(amount * 100) # expects cents
      end
    end
  end
end