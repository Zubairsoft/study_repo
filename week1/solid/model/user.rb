module Model
  class User  
    attr_reader :name, :email, :phone
  
    def initialize(name:nil, email:nil, phone:nil) 
      @name = name
      @email = email
      @phone = phone
    end

    def notify
      send_email if email
      send_sms if phone
    end

    private

      def send_email
        puts "Sending email to #{email}"
      end

      def send_sms
        puts "Sending sms to #{phone}"
      end
  end
end

