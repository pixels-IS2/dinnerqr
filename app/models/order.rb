class Order < ApplicationRecord
    belongs_to :table
    belongs_to :client
    has_many   :orderdishes
    has_many	:dishes, :through => :orderdishes

    def self.history_client client
    	historyClient = client.orders.joins(:orderdishes, :dishes).select("orders.*, orders.id   as orderId, orders.created_at as created, orderdishes.*, dishes.*, dishes.price as dishprice")
    	return historyClient
    end

end
