require 'singleton'
module Config
  class Payment
    include Singleton
    attr_reader :base_url, :api_key

    def initialize
      @base_url = ENV["PAYMENT_BASE_URL"]
      @api_key  = ENV["PAYMENT_API_KEY"]
      raise "Missing PAYMENT_API_KEY or PAYMENT_BASE_URL" if @api_key.nil? or @base_url.nil?          
    end
  end
end
