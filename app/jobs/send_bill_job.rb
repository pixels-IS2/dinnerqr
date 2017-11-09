class SendBillJob < ApplicationJob
  queue_as :email

  def perform(order,client)
    OrdersMailer.new_order(order,client).deliver_now
  end
end
