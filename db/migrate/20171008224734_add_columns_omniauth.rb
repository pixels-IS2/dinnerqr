class AddColumnsOmniauth < ActiveRecord::Migration[5.1]
  def change
  	unless column_exists?(:clients, :provider, :string)
  	add_column :clients, :provider, :string 
  end
  	unless column_exists?(:clients, :uid, :string)
  	add_column :clients, :uid, :string
  end
  	unless column_exists?(:clients, :oauth_token, :string)
  	add_column :clients, :oauth_token, :string
  end
  	unless column_exists?(:clients, :oauth_expires_at, :datetime)
  	add_column :clients, :oauth_expires_at, :datetime
  end
  end
end
