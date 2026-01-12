require_relative '../notifications/email'
require_relative '../notifications/sms'

module Model
  class User  
    attr_reader :name, :email, :phone
  
    def initialize(name:nil, email:nil, phone:nil) 
      @name = name
      @email = email
      @phone = phone
    end

    def send_notification
      Notification::Email.new(self).notify
      Notification::Sms.new(self).notify
    end

  end
end
