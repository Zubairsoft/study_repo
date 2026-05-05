module ExternalModules
  module Fetch
    def fetch(user_id)
      raise NotImplementedError, 'The fetch method must be implemented by subclasses' 
    end
  end
end