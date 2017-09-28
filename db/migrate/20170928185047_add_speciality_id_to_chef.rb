class AddSpecialityIdToChef < ActiveRecord::Migration[5.1]
  def change
    add_reference :chefs, :speciality, index: true
    add_foreign_key :chefs, :specialities
  end
end
