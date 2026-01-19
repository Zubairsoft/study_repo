require_relative '../interfaces/notification_service'
require_relative '../others/dashboard'
class Order
  include Interfaces::NotificationService
  
  attr_reader :status, :user, :observers

  def initialize(user)
    @observers = []
    @user = user
    @status = "pending"
    attach(user)
    attach(Dashboard.new)
  end

  def confirm!
    @status = "confirmed"
    notify
  end

  def attach(observer)
    @observers << observer
  end

  def detach(observer)
    @observers.delete(observer)
  end

  def notify
    @observers.each(&:update)
  end

end
