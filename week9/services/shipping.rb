module Services
  class Shipping
    def schedule(order)
      puts "Shipping scheduled for order #{order.id}"
    end
  end
end