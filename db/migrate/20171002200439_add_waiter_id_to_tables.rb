class AddWaiterIdToTables < ActiveRecord::Migration[5.1]
  def change
     add_reference :tables, :waiter, index: true
    add_foreign_key :tables, :waiters
  end
end
