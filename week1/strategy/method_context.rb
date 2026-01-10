class MethodContext
  def initialize(method_strategy)
    @method_strategy = method_strategy
  end

  def caliculate(order)
    @method_strategy.apply(order)
  end
end
