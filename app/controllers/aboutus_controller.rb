class AboutusController < ApplicationController

	def new
    	@aboutus = Aboutus.new
	end

  	def create
    	@aboutus = Aboutus.new(aboutus_params)
    
    	if @aboutus.valid?
      		AboutusMailer.new_aboutus(@aboutus).deliver
      		redirect_to aboutus_path, notice: "Your message has been sent."
    	else
      		flash[:alert] = "An error occurred while delivering this message."
      		render :new
    	end
  	end

	private

	def aboutus_params
    	params.require(:aboutus).permit(:name, :email, :content)
  	end
end