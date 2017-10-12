class AdministratorMailer < ApplicationMailer
	#def account_activation(user)
	#	@user = user
	#   mail to: user.email, subject: "Account activation"
	#end
	def welcome_email(administrator)
	    @administrator = administrator
	    @url  = new_administrator_session_path
	    mail(to: @administrator.email, subject: 'Welcome to DinnerQR')
	end

  	def reset_password(administrator)
    	@administrator = administrator
    	mail to: administrator.email, subject: "Password reset"
  	end
end
