require_relative 'controllers/report_controller'

# Simulate a request to the controller§
controller = ReportsController.new
puts controller.show(1) # Should fetch from API
puts controller.show(1) # Should fetch from cache
# puts controller.show(4) # Should raise access denied error