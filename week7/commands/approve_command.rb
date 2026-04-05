require_relative 'command' 
module Commands
  class ApproveCommand

    include Command
    attr_reader :request

    def initialize(request)
      @request = request
    end

    def execute
      if request.attributes[:status] != 'pending'
        raise "Only pending requests can be approved."
      end

      request.approve
    end
  end
end
