class MenuController < ApplicationController
  def menu
    @specialities = Speciality.all
  end
 
end
