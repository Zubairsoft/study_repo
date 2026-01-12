require_relative 'base'

module DiscountType
  class DiscountType::Vip < DiscountType::Base

    def initialize()
      @amount = 0.8
    end

    def apply(price)
      price * amount
    end

  end
end
