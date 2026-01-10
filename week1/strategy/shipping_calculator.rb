require_relative 'method_context'
require_relative 'method_calculator_strategy'
require_relative 'fedex'
require_relative 'aramex'
require_relative 'dhl'
require_relative 'open_struct'

class ShippingCalculator
  def calculate(order, method)
    MethodContext.new(Object.const_get(method.to_s.capitalize).new).caliculate(order)
  rescue
    raise "Unknown shipping method"
  end
end

calc = ShippingCalculator.new
puts calc.calculate(OpenStruct.new(weight: 5), :fedex)
puts calc.calculate(OpenStruct.new(weight: 5), :dhl)   
puts calc.calculate(OpenStruct.new(weight: 5), :aramex)
puts calc.calculate(OpenStruct.new(weight: 5), :unsported)
