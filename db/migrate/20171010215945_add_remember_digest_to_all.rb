class AddRememberDigestToAll < ActiveRecord::Migration[5.1]
  def change
    add_column :administrators, :remember_digest, :string
    add_column :chefs, :remember_digest, :string
    add_column :clients, :remember_digest, :string
    add_column :waiters, :remember_digest, :string
  end
end
