require_relative './base'
require_relative '../../notifications/sms_notifier'

module Creator::Notifications
  class SmsNotifierCreator < Base

    def create_notification
      Notifications::SmsNotifier.new
    end
  end
end
