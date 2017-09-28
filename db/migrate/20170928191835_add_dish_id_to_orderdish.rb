class AddDishIdToOrderdish < ActiveRecord::Migration[5.1]
  def change
    add_reference :orderdishes, :dish, index: true
    add_foreign_key :orderdishes, :dishes
  end
end
