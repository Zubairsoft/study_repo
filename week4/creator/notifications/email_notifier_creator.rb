require_relative './base'
require_relative '../../notifications/email_notifier'


module Creator::Notifications
  class EmailNotifierCreator < Base

    def create_notification
      Notifications::EmailNotifier.new
    end
  end
end