require_relative 'abstract_factories/notifications/aws'
require_relative 'abstract_factories/notifications/twilio'

class NotificationService
  def send_email(message)
    if ENV["PROVIDER"] == "aws"
      AbstractFactories::Notifications::Aws.new.create_email.send(message)
    else
      AbstractFactories::Notifications::Twilio.new.create_email.send(message)
    end
  end

  def send_sms(message)
    if ENV["PROVIDER"] == "aws"
      AbstractFactories::Notifications::Aws.new.create_sms.send(message)
    else
      AbstractFactories::Notifications::Twilio.new.create_sms.send(message)
    end
  end
end
