require_relative '../interfaces/notification_observer'

class User
  include Interfaces::NotificationObserver

  attr_reader :name, :email, :phone

  def initialize(name:, email: nil, phone: nil)
    @name = name
    @email = email
    @phone = phone
  end

  def update
    if email
      puts "Sending email notification to #{email} for user #{name}"
    end

    if phone
      puts "Sending SMS notification to #{phone} for user #{name}"
    end
  end
end
