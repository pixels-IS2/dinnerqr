class PasswordResetsController < ApplicationController

  def new
  end

  def create
    @administrator = Administrator.find_by(email: params[:password_reset][:email].downcase)
    if @administrator
      @administrator.create_reset_digest
      @administrator.send_password_reset_email
      flash[:info] = "Email sent with password reset instructions"
      redirect_to root_url
    else
      flash.now[:danger] = "Email address not found"
      render 'new'
    end
  end

  def edit
  end
end