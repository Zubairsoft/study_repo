require_relative "../../payment_gateway_client"

module Payments
  class Refund
    def call(transaction_id:)
      PaymentGatewayClient.instance.refund(transaction_id:)
    end
  end   
end
