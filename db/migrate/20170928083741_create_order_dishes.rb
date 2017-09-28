class CreateOrderDishes < ActiveRecord::Migration[5.1]
  def change
    create_table :order_dishes do |t|

      t.timestamps
    end
  end
end
