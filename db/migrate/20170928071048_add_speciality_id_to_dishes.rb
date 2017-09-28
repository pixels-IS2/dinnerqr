class AddSpecialityIdToDishes < ActiveRecord::Migration[5.1]
  def change
    add_reference :dishes, :speciality, index: true
    add_foreign_key :dishes, :specialities
  end
end
