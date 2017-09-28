class AddTableIdToOrder < ActiveRecord::Migration[5.1]
  def change
    add_reference :orders, :table, index: true
    add_foreign_key :orders, :tables
  end
end
