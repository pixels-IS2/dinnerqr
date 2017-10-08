class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  respond_to :html, :json
  #before_action :authenticate_chef!
  def after_sign_in_path_for(resource)
    dishes_path
  end
  helper_method :current_user

private

def current_user
  @current_client ||= Client.find(session[:client_id]) if session[:client_id]
end

end
