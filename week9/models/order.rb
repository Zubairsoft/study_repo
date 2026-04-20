module Models
  class Order
    attr_accessor :id, :user_email, :items

    def initialize(id:, user_email:, items:)
      @id = id
      @user_email = user_email
      @items = items
    end

    def total_price
      items.sum(&:total_price)
    end
  end
end