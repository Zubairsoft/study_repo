require_relative 'base'
  
module DiscountType
  class Seasonal < DiscountType::Base

    def initialize()
      @amount = 0.9
    end

    def apply(price)
      price * amount
    end

  end
end
