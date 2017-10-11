class AdministratorMailer < ApplicationMailer
	#def account_activation(user)
	#	@user = user
	#   mail to: user.email, subject: "Account activation"
	#end

  	def password_reset(admin)
    	@administrator = admin
    	mail to: admin.email, subject: "Password reset"
  	end
end
