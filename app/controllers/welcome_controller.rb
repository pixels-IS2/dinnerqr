class WelcomeController < ApplicationController
  def index
  	if client_signed_in?
    	redirect_to new_qr_path
    	puts '---------------Client is logged in-------------------'
    elsif chef_signed_in? or administrator_signed_in? or waiter_signed_in?  
        redirect_to menu_path
        puts '---------------Restaurant staff is logged in-------------------'
    else
    	puts '---------------No one is logged in-------------------'
    end
  end
end
