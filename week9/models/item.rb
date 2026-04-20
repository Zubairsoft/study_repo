module Models
  class Item
    attr_accessor :product_id, :quantity, :price

    def initialize(product_id:, quantity:, price:)
      @product_id = product_id
      @quantity = quantity
      @price = price
    end

    def total_price
      quantity * price
    end
  end
end