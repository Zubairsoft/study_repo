require_relative './order_price_calculator'

module Decorator
  class Insurance < OrderPriceCalculator

    def total
      super + 10
    end
  end
end
