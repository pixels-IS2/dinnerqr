class AddColumnasmockupToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :birthdate, :date
    add_column :users, :identification_type, :integer
    add_column :users, :gender, :integer
  end
end
