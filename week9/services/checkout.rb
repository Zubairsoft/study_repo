require_relative 'inventory'
require_relative 'notification'
require_relative 'shipping'
require_relative 'payment_gateway'
require_relative '../facade/payment'


module Services
  class Checkout
    def create(order)
      Facade::Payment.new(
        payment_gateway: Services::PaymentGateway.new,
        inventory: Services::Inventory.new,
        notification: Services::Notification.new,
        shipping: Services::Shipping.new
      ).pay(order)

      puts({status: 'success', message: 'Order has been placed successfully'})

    end
  end
end