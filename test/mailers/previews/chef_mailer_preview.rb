# Preview all emails at http://localhost:3000/rails/mailers/chef_mailer
class ChefMailerPreview < ActionMailer::Preview
	def welcome_email
		ChefMailer.welcome_email(Chef.first)
	end
end
