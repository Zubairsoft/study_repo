require_relative 'command' 
module Commands
  class CancelCommand

    include Command
    attr_reader :request

    def initialize(request)
      @request = request
    end

    def execute
      if request.attributes[:status] != 'pending'
        raise "Only pending requests can be canceled."
      end
      request.cancel
    end
  end
end
