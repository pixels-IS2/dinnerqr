class WaiterMailer < ApplicationMailer
	def password_reset(waiter)
    	@waiter = waiter
    	mail to: waiter.email, subject: "Password reset"
  	end
end
