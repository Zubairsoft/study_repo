require_relative 'creator/notifications/email_notifier_creator'
require_relative 'creator/notifications/pusher_notifier_creator'
require_relative 'creator/notifications/sms_notifier_creator'

Creator::Notifications::EmailNotifierCreator.new.send_notification('message for email notification')
Creator::Notifications::PusherNotifierCreator.new.send_notification('push notification message')
Creator::Notifications::SmsNotifierCreator.new.send_notification('sms notification message')