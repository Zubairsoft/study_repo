class Fedex < MethodCalculatorStrategy
  def apply(order)
    order.weight * 10 + 15
  end
end
