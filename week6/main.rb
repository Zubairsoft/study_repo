require_relative "services/payments/charge"
require_relative "services/payments/refund"
require_relative "services/payments/renewal"
require_relative "payment_gateway_client"

ENV["PAYMENT_BASE_URL"] = "https://api.paymentgateway.com"
ENV["PAYMENT_API_KEY"] = "secret_api_key"

Payments::Charge.new.call(amount: 100, customer_id: "cust_123")
Payments::Refund.new.call(transaction_id: "txn_456")
Payments::Renewal.new.call(amount: 50, customer_id: "cust_123")