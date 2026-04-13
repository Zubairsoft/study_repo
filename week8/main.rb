require_relative './gateway/paymob_gateway'
require_relative './gateway/paypal_gateway'
require_relative './gateway/stripe_gateway'
require_relative './adapter/payment/paypal_adapter'
require_relative './adapter/payment/stripe_adapter'
require_relative './adapter/payment/paymob_adapter'
require_relative './services/checkout_service'

CheckoutService.new(Adapter::Payment::PaypalAdapter.new).pay(100)
CheckoutService.new(Adapter::Payment::StripeAdapter.new).pay(200)
CheckoutService.new(Adapter::Payment::PaymobAdapter.new).pay(300)