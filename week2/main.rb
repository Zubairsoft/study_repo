require_relative './models/order'
require_relative './models/user'

order = Order.new(User.new(name: "John Doe", email: "john.doe@example.com", phone: "1234567890"))

order.confirm!