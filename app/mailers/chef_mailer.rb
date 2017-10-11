class ChefMailer < ApplicationMailer
	def password_reset(chef)
    	@chef = chef
    	mail to: chef.email, subject: "Password reset"
  	end
end
