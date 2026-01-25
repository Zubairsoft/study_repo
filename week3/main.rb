require_relative 'order'
require_relative 'decorator/gift_wrap'
require_relative 'decorator/express_shipping'
require_relative 'decorator/insurance'

order = Order.new(100)
gift_wrapped_order = Decorator::GiftWrap.new(order)
express_shipping_order = Decorator::ExpressShipping.new(gift_wrapped_order)
insured_order = Decorator::Insurance.new(express_shipping_order)

puts "Base price: $#{order.total}"
puts "After gift wrap: $#{gift_wrapped_order.total}"
puts "After express shipping: $#{express_shipping_order.total}"
puts "Final total price: $#{insured_order.total}"