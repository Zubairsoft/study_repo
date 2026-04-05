require_relative 'commands/approve_command'
require_relative 'commands/reject_command'
require_relative 'commands/cancel_command'
require_relative 'commands/reset_command'

class RequestInvoker
    attr_reader :request
    def initialize(request)
        @request = request
    end

    def approve
        Commands::ApproveCommand.new(request).execute
    end

    def reject
        Commands::RejectCommand.new(request).execute
    end

    def cancel
        Commands::CancelCommand.new(request).execute
    end

    def reset
        Commands::ResetCommand.new(request).execute
    end

end