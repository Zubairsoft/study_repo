require_relative 'command' 
module Commands
  class ResetCommand

    include Command
    attr_reader :request

    def initialize(request)
      @request = request
    end

    def execute
      if request.attributes[:status] == 'pending'
        raise "Only non-pending requests can be reset."
      end

      request.reset
    end
  end
end
