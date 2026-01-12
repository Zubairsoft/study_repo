require_relative './discount_type/coupon'
require_relative './discount_type/seasonal'
require_relative './discount_type/vip'
require_relative './model/order'
require_relative './model/order_item'
require_relative './model/user'
require_relative './services/order_service'

order_items = []
order_items << Model::OrderItem.new(100, 2)
order_items << Model::OrderItem.new(200, 1)
order = Model::Order.new(order_items)
user1 = Model::User.new(name: "John Doe", email: "john.doe@example.com", phone: "1234567890")
user2 = Model::User.new(name: "ahmed", phone: "1234567890")
user3 = Model::User.new(name: "ali", email: "ali@example.com")


Services::OrderService.new.checkout(order, user1, DiscountType::Seasonal.new)

Services::OrderService.new.checkout(order, user2, DiscountType::Vip.new)

Services::OrderService.new.checkout(order, user3, DiscountType::Coupon.new)
