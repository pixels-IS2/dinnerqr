class AddColumsClient < ActiveRecord::Migration[5.1]
  def change
    unless column_exists?(:clients, :name, :string)
  	add_column :clients, :name, :string 
  end
  	unless column_exists?(:clients, :lastname, :string)
  	add_column :clients, :lastname, :string
  end
  	unless column_exists?(:clients, :identification, :integer)
  	add_column :clients, :identification, :integer
  end
  	unless column_exists?(:clients, :birthday, :date)
  	add_column :clients, :birthday, :date
  end
  end
end
