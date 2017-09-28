class CreateOrderdishes < ActiveRecord::Migration[5.1]
  def change
    create_table :orderdishes do |t|
      t.string :state
      t.integer :quantity
      t.string :specification

      t.timestamps
    end
  end
end
