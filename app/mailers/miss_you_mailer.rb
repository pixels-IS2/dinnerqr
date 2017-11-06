class MissYouMailer < ApplicationMailer
	def happy_form(email)
		mail to: email,
		 subject:"Gracias por tu visita"
	end

end
