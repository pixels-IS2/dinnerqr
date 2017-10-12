class Administrator < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	def reset
		@administrator = Administrator.where(:email => params[:email]).first
		unless @administrator.nil?
		  Notifier.send_reset_notice(@administrator).deliver_now
		  @administrator.send_reset_password_instructions
		  redirect_to new_administrator_session_url
		else
		  redirect_to new_administrator_session_url, :flash => { :error => "That email address matches no user." }
	end
end
end
