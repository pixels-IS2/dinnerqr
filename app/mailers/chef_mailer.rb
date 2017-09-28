class ChefMailer < ApplicationMailer
	def welcome_email(chef)
		@chef = chef
		@url = 'http://localhost:3000/sign_in'
		mail(to: @chef.email, subject: 'Bienvenido a DinnerQR')
	end
end
