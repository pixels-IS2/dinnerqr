class CreateDishes < ActiveRecord::Migration[5.1]
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :state
      t.text :description
      t.string :speciality
      t.integer :price

      t.timestamps
    end
  end
end
