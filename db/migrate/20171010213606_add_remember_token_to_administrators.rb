class AddRememberTokenToAdministrators < ActiveRecord::Migration[5.1]
  def change
  	add_column :administrators, :remember_token, :string
  	add_column :chefs, :remember_token, :string
  	add_column :clients, :remember_token, :string
  	add_column :waiters, :remember_token, :string
  end
end
