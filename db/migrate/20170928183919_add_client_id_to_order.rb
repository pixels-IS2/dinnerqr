class AddClientIdToOrder < ActiveRecord::Migration[5.1]
  def change
    add_reference :orders, :client, index: true
    add_foreign_key :orders, :clients
  end
end
