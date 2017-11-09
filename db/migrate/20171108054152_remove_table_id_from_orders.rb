class RemoveTableIdFromOrders < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :table_id, :integer
  end
end
