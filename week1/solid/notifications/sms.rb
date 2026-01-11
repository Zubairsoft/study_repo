require_relative 'base'

module Notification
  class Sms < Base

    def initialize(user)
      @user = user
    end

    def notify()
      return unless @user.phone

      puts "Sending SMS to #{@user.phone}"
    end
  end
end
