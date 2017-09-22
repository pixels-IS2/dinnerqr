class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :num_factura
      t.datetime :time
      t.integer :total_cost

      t.timestamps
    end
  end
end
