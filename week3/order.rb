require_relative 'order_price_calculator'

class Order < OrderPriceCalculator
  def initialize(price)
    @price = price
  end

  def total
    @price
  end
end