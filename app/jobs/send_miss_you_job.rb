class SendMissYouJob < ApplicationJob
  queue_as :email

  def perform(email)
   MissYouMailer.happy_form(email).deliver_now
   #puts "esto funciona"
  end
end
