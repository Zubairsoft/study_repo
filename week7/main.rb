require_relative 'request_invoker'
require_relative '../week7/model/request'

request = Request.new({customer_id: '123', title: 'annual leave', status: 'pending'})

request.save

invoker = RequestInvoker.new(request)

#### approve the request #####
invoker.approve

#### reset the request #####
invoker.reset

#### reject the request #####
invoker.reject

#### reset the request #####
invoker.reset

#### cancel the request #####
invoker.cancel
