require_relative 'notification_service'

ENV["PROVIDER"] = "aws"
service = NotificationService.new
service.send_email("Hello via Email!")
service.send_sms("Hello via SMS!")
