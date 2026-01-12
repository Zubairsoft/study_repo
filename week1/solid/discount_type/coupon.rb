require_relative 'base'

module DiscountType
  class Coupon < Base

    def initialize()
      @amount = 20
    end

    def apply(price)
      price - amount
    end

  end
end
