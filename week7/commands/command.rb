module Commands
  module Command
    def execute
      raise NotImplementedError, "You must implement the #{__method__} method in your #{self.class}."
    end
  end
end
