class AdministratorController < ApplicationController
	def reset_password(administrator)
		@administrator = administrator

		mail to: 'dinnerqr@gmail.com', subject: "Message from #{aboutus.name}"
	end
end
