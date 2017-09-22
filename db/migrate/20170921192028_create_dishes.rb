class CreateDishes < ActiveRecord::Migration[5.1]
  def change
    create_table :dishes do |t|
      t.string :name
      t.integer :cost
      t.integer :tipo
      t.string :img
      t.timestamps
    end
  end
end
