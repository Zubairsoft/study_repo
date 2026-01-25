require_relative './order_price_calculator'

module Decorator
  class ExpressShipping < OrderPriceCalculator

    def total
      super + 15
    end
  end
end
