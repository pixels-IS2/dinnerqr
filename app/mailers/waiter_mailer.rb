class WaiterMailer < ApplicationMailer
	def password_reset(waiter)
    	@waiter = waiter
    	mail to: waiter.email, subject: "Password reset"
  	end

  	def welcome_email(waiter)
	    @waiter = waiter
	    @url  = new_waiter_session_path
	    mail(to: @waiter.email, subject: 'Welcome to DinnerQR')
	end
end
