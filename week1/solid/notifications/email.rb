require_relative 'base'

module Notification
  class Email < Base

    def initialize(user)
      @user = user
    end

    def notify()
      return unless @user.email

      puts "Sending email to #{@user.email}"
    end
  end
end
