class Order < ApplicationRecord
    belongs_to :table
    belongs_to :client
    has_many   :orderdishes
    has_many	:dishes, :through => :orderdishes
    validates :state, presence: true, length: { in: 6..40 }
    validates :price, presence: true,  length: { in: 1..10 }, numericality: { only_integer: true }
    def self.history_client client
    	historyClient = client.orders.joins(:orderdishes, :dishes).select("orders.*, orders.id   as orderId, orders.created_at as created, orderdishes.*, dishes.*, dishes.price as dishprice")
    	return historyClient
    end
    def self.top_dish client
        topDish=client.orders.joins(:orderdishes,:dishes).select('dishes.*,dishes.name as name, count(dishes.id) AS counter').group('name').order('counter DESC').first(3)
        return topDish
    end
    K=[]
    def self.sales_by_dish
        return Orderdish.joins(:dish).group('name').sum('quantity')
        #return Orderdish.joins(:dish).group('name')
    end
    def self.sales_by_today
        return Order.where("DATE(created_at) = ?", Date.today).group("DATE(created_at)").sum("price")
        #return las ventas del dia
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
