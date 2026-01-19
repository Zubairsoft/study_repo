require_relative '../interfaces/notification_observer'
class Dashboard
  include Interfaces::NotificationObserver

  def update
    puts "Updating dashboard for order status change"
  end
  
end