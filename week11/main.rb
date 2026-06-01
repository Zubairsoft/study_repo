require_relative 'bridge/notifications/alert'
require_relative 'bridge/notifications/reminder'
require_relative 'bridge/notifications/channal/email'
require_relative 'bridge/notifications/channal/sms'
require_relative 'bridge/notifications/channal/push'

# Alert Notifications
Bridge::Notifications::Alert.new(Bridge::Notifications::Channal::Email.new).notify('welcome')
Bridge::Notifications::Alert.new(Bridge::Notifications::Channal::Sms.new).notify('welcome')
Bridge::Notifications::Alert.new(Bridge::Notifications::Channal::Push.new).notify('welcome')
# Remaider Notification
Bridge::Notifications::Reminder.new(Bridge::Notifications::Channal::Email.new).notify('dont forget your punch')
Bridge::Notifications::Reminder.new(Bridge::Notifications::Channal::Sms.new).notify('dont forget your punch')
Bridge::Notifications::Reminder.new(Bridge::Notifications::Channal::Push.new).notify('dont forget your punch')


