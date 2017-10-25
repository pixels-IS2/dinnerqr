class WelcomeController < ApplicationController
  def index
    if client_signed_in? or chef_signed_in? or administrator_signed_in? or waiter_signed_in?  
        redirect_to menu_path
    end
  end
end
