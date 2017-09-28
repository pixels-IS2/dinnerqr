class AddOrderIdToOrderdish < ActiveRecord::Migration[5.1]
  def change
     add_reference :orderdishes, :order, index: true
    add_foreign_key :orderdishes, :orders
  end
end
