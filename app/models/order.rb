class Order < ApplicationRecord
    belongs_to :table
    belongs_to :client
    has_many   :orderdishes
    has_many	:dishes, :through => :orderdishes

    def self.history_client client
    	historyClient = client.orders.joins(:orderdishes, :dishes).select("orders.*, orders.id   as orderId, orders.created_at as created, orderdishes.*, dishes.*, dishes.price as dishprice")
    	return historyClient
    end
    
    K=[]
    def self.sales_by_dish
        return Orderdish.joins(:dish).group('name').sum('quantity')
        #return Orderdish.joins(:dish).group('name')
    end

    def self.dishmax
        return Orderdish.joins(:dish).group('name').sum('quantity')

    #def self.all_time_sales
    #    return Orders.
    #end

    end
    def self.client
        return Order.group("client_id").count



    end

    def self.mesa
        return Order.group("table_id").count



    end

    def self.ventasf
        Order.group("created_at").sum("price");
    end

end
