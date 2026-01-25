require_relative '../order_price_calculator'
module Decorator
  class OrderPriceCalculator < OrderPriceCalculator
    def initialize(calculator)
      @calculator = calculator
    end

    def total
      @calculator.total
    end
  end
end
