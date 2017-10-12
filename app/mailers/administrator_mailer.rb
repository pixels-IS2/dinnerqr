class AdministratorMailer < ApplicationMailer
	#def account_activation(user)
	#	@user = user
	#   mail to: user.email, subject: "Account activation"
	#end

  	def reset_password(administrator)
    	@administrator = administrator
    	mail to: administrator.email, subject: "Password reset"
  	end
end
