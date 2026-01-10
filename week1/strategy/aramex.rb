class Aramex < MethodCalculatorStrategy
  def apply(order)
    order.weight * 8 + 10
  end
end
