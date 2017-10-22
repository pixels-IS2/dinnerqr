class AddPhotoToUsers < ActiveRecord::Migration[5.1]
  def change
  	add_attachment :clients, :photo
  	add_attachment :chefs, :photo
  	#add_attachment :waiters, :photo
  	add_attachment :administrators, :photo
  end
end
