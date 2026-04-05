require_relative 'command' 
module Commands
  class RejectCommand

    include Command
    attr_reader :request

    def initialize(request)
      @request = request
    end

    def execute
      if request.attributes[:status] != 'pending'
        raise "Only pending requests can be rejected."
      end
      request.reject
    end
  end
end
