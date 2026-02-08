require_relative 'base'
require_relative '../../aws/email'
require_relative '../../aws/sms'
module AbstractFactories
  module Notifications
    class Aws < Base
      def create_email()
        ::Aws::Email.new
      end
      
      def create_sms()
        ::Aws::Sms.new
      end
    end
  end
end
