require_relative 'active_record'
class Request < ActiveRecord

  def initialize(attributes = {})
    super(attributes)
  end

  def approve
    update({status: 'approved', approved_at: Time.now , approved_by: current_user})
    puts "send email to #{attributes[:employee_id]} about approval"
    puts "create notification for #{attributes[:employee_id]} about approval"
  end

  def reject
    update({status: 'rejected', approved_at: nil, approved_by: nil})
    puts "send email to #{attributes[:employee_id]} about rejection"
    puts "create notification for #{attributes[:employee_id]} about rejection"
  end

  def cancel
    update({status: 'cancelled', approved_at: nil, approved_by: nil})
    puts "send email to #{attributes[:employee_id]} about cancellation"
    puts "create notification for #{attributes[:employee_id]} about cancellation"
  end

  def reset
    update({status: 'pending', approved_at: nil, approved_by: nil})
  end

  def current_user
    "111"
  end
end
