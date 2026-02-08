require_relative 'base'
require_relative '../../twilio/email'
require_relative '../../twilio/sms'

module AbstractFactories
  module Notifications
    class Twilio < Base
      def create_email()
        ::Twilio::Email.new
      end
      
      def create_sms()
        ::Twilio::Sms.new
      end
    end
  end
end
