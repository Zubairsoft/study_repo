require_relative './base'
require_relative '../../notifications/push_notifier'


module Creator::Notifications
  class PusherNotifierCreator < Base

    def create_notification
      Notifications::PushNotifier.new
    end
  end
end