require_relative "../../payment_gateway_client"

module Payments
  class Charge
    def call(amount:, customer_id:, currency: 'USD')
      PaymentGatewayClient.instance.charge(amount:, currency:, customer_id:)
    end
  end  
end
