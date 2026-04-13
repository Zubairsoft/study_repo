require_relative '../adapter/payment/base'

class CheckoutService
  def initialize(provider)
    if provider.kind_of?(Adapter::Payment::Base)
      @provider = provider
    else
      raise "Unsupported provider"
    end

  end

  def pay(amount)
    @provider.process(amount)
  end
end