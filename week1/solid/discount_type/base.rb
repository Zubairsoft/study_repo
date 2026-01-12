module DiscountType
  class Base

    attr_accessor :amount

    def apply(price)
      raise NotImplementedError, 'Subclasses must implement the apply method'
    end
    
  end
end
