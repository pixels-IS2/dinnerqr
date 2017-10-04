class AboutusMailer < ApplicationMailer
	default from: "Your Mailer <dinnerqr@gmail.com>"
	default to: "Your Name <your.email@yourdomain.com>"

	def new_aboutus(aboutus)
		@aboutus = aboutus

		mail subject: "Message from #{aboutus.name}"
	end
end
