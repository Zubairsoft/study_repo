require_relative 'config/payment'

require 'singleton'

class PaymentGatewayClient
  include Singleton

  def initialize
    @base_url = Config::Payment.instance.base_url
    @api_key  = Config::Payment.instance.api_key
    
    @headers = {
      "Authorization" => "Bearer #{@api_key}",
      "Content-Type" => "application/json"
    }

    puts "PaymentGatewayClient initialized..."
  end

  def charge(amount:, currency:, customer_id:)
    send_request(path: "charge", body: { amount: amount, currency: currency, customer_id: customer_id })
    puts "Charging #{amount} #{currency} for customer #{customer_id}"
  end

  def refund(transaction_id:)
    send_request(path: "refund", body: { transaction_id: transaction_id })
    puts "Refunding transaction #{transaction_id}"
  end

  private
  
  def self.initialize_headers
    @headers = {
      "Authorization" => "Bearer #{@api_key}",
      "Content-Type" => "application/json"
    } 
  end

  def send_request(path:,body: {}, request_method:'POST')
    curl = {
      headers: @headers,
      method: request_method,
      url: "#{@base_url}/#{path}",
      body: body
    }
    puts "Sending Request"
    puts curl
  end
end
