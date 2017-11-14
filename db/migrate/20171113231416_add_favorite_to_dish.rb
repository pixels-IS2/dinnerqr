class AddFavoriteToDish < ActiveRecord::Migration[5.1]
  def change
  	unless column_exists?(:dishes, :favorite, :bolean)
  	add_column :dishes, :favorite, :boolean, default: false, null: false
  end
  end
end
