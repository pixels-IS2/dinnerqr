class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  respond_to :html, :json
  before_action :configure_permitted_parameters, if: :devise_controller?


  #before_action :authenticate_chef!
 
 def after_sign_in_path_for(resource)

  if resource.class == Chef
    dishes_path 
  else
    root_path 
  end
end
  helper_method :current_user

  #before_action :configure_permitted_parameters, if: :devise_controller?
	#protected
  #def configure_permitted_parameters
  #  devise_parameter_sanitizer.permit(:sign_up,keys: [:first_name, :last_name, :email, :password, :password_confirmation]);
  #  devise_parameter_sanitizer.permit(:account_update,keys: [:first_name, :last_name, :email, :password, :current_password]);
	#end

	private

	def current_user
	  @current_client ||= Client.find(session[:client_id]) if session[:client_id]
	end
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :email, :password, :password_confirmation, :speciality_id])
  end
end
