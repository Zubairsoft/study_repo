require_relative '../external_modules/fetch'

module Proxy
  class Report
    include ExternalModules::Fetch
    def initialize(report_service)
      @report_service = report_service
      @cache = {}
    end

    def fetch(user_id)
      check_access(user_id)
      return cached_report(user_id) if @cache.key?(user_id)
      report = @report_service.fetch(user_id)
      cache_report(user_id, report)
      report
    end

    private

    def cache_report(user_id, report)
      @cache[user_id] = report

    end

    def cached_report(user_id)
      puts "Cached report for user #{user_id}..."
      @cache[user_id]
    end

    def check_access(user_id)
      if (![1, 2, 3].include?(user_id))
        raise "Access denied for user #{user_id}"
      end
    end
  end
end