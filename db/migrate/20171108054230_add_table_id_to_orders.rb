class AddTableIdToOrders < ActiveRecord::Migration[5.1]
  def change
    add_reference :orders, :table, foreign_key: true
    add_foreign_key :orders, :tables
  end
end
