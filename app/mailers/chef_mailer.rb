class ChefMailer < ApplicationMailer
	def password_reset(chef)
    	@chef = chef
    	mail to: chef.email, subject: "Password reset"
  	end

  	def welcome_email(chef)
	    @chef = chef
	    @url  = new_chef_session_path
	    mail(to: @chef.email, subject: 'Welcome to DinnerQR')
	end

end
