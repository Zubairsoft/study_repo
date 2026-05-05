require_relative '../proxy/report'
require_relative '../services/report'

class ReportsController
  def initialize
    @report_proxy = Proxy::Report.new(Services::Report.new)
  end
  def show(user_id)   
    return {
      status: :success,
      data: @report_proxy.fetch(user_id)
    }
  end
end