class ClientMailer < ApplicationMailer
	def password_reset(client)
    	@client = client
    	mail to: client.email, subject: "Password reset"
  	end

  	def welcome_email(client)
	    @client = client
	    @url  = new_client_session_path
	    mail(to: @client.email, subject: 'Welcome to DinnerQR')
	end
end
