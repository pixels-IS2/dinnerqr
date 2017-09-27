class AddPhotoToDishes < ActiveRecord::Migration[5.1]
  def change
    add_attachment :dishes,:photo
  end
end
