class ClientMailer < ApplicationMailer
	def password_reset(client)
    	@client = client
    	mail to: client.email, subject: "Password reset"
  	end
end
