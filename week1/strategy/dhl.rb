class Dhl < MethodCalculatorStrategy
  def apply(order)
    order.weight * 12 + 20
  end
end
