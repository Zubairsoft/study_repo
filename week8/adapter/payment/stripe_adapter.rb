require_relative 'base'
require_relative '../../gateway/stripe_gateway'

module Adapter
  module Payment
    class StripeAdapter < Base
      def process(amount)
        StripeGateway.new.charge(amount:)
      end
    end
  end
end

