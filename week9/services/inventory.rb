module Services
  class Inventory
    def reserve(item)
      puts "Reserved #{item.quantity} of product #{item.product_id}"
    end
  end
end