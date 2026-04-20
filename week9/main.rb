require_relative 'services/checkout'
require_relative 'models/item'
require_relative 'models/order'

item1 = Models::Item.new(product_id: 101, quantity: 2, price: 50)
item2 = Models::Item.new(product_id: 102, quantity: 1, price: 100)
order = Models::Order.new(id: 1, user_email: 'customer@example.com', items: [item1, item2])

checkout = Services::Checkout.new
checkout.create(order)
