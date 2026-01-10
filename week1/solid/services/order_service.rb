module Services
  class OrderService
    def checkout(order, user, discount_type)
      total = caliculate_total(order)

      total = discount_type.apply(total)

      user.notify

      puts "Saving order with total #{total}"

      total
    end

    private

      def caliculate_total(order)
        total = 0

        order.items.each do |item|
          total += item.price * item.quantity
        end

        total
      end
  
  end
end
