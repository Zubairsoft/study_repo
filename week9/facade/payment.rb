module Facade
  class Payment
    attr_reader :payment_gateway, :inventory, :notification, :shipping

    def initialize(payment_gateway:, inventory:, notification:, shipping:)
      @payment_gateway = payment_gateway
      @inventory = inventory
      @notification = notification
      @shipping = shipping
    end

    def pay(order)
      payment_gateway.charge(order.total_price)

      order.items.each do |item|
        @inventory.reserve(item)
      end

      shipping.schedule(order)

      notification.send_email(
        order.user_email,
        "Your order has been placed"
      )
    end
  end
end
