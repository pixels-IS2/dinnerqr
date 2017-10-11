class AboutusMailer < ApplicationMailer
	default from: "Your Mailer <dinnerqr@gmail.com>"
	default to: "Your Name <dinnerqr@gmail.com>"

	def new_aboutus(aboutus)
		@aboutus = aboutus

		mail (to: 'dinnerqr@gmail.com' subject: "Message from #{aboutus.name}")
	end
end
