require_relative 'base'
require_relative '../../gateway/paypal_gateway'

module Adapter
  module Payment
    class PaypalAdapter < Base
      def process(amount)
        PaypalGateway.new.make_payment(amount)
      end
    end
  end
end