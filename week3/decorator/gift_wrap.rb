require_relative './order_price_calculator'

module Decorator
  class GiftWrap < OrderPriceCalculator

    def total
      super + 5
    end
  end
end
