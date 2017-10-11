class AddResetToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :administrators, :reset_digest, :string
    add_column :administrators, :reset_sent_at, :datetime
    add_column :chefs, :reset_digest, :string
    add_column :chefs, :reset_sent_at, :datetime
    add_column :clients, :reset_digest, :string
    add_column :clients, :reset_sent_at, :datetime
    add_column :waiters, :reset_digest, :string
    add_column :waiters, :reset_sent_at, :datetime
  end
end
