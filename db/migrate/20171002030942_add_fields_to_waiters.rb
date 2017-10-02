class AddFieldsToWaiters < ActiveRecord::Migration[5.1]
  def change
  	add_column :waiters, :name, :string
  	add_column :waiters, :last_name, :string
  	add_column :waiters, :username, :string
  	add_column :waiters, :status, :string
  	add_attachment :waiters, :photo
  end
end
