class Orderdish < ApplicationRecord
    belongs_to  :order
    belongs_to     :dish
    validates :quantity, presence: true,  length: { in: 1..2 }, numericality: { only_integer: true }
    validates :state, presence: true, length: { in: 6..40 }
    def self.orders_chef chef
        orders_chef=Orderdish.all.joins({:order => :table},:dish).select("orderdishes.*,orderdishes.id as id, dishes.*, dishes.speciality_id as speciality_id, tables.*, orders.*, orders.created_at as order_created").where("dishes.speciality_id = ?", chef.speciality_id).where("orderdishes.state = ?", "On hold").order("order_created ASC")
        return orders_chef
        
    end
    
    def self.orders_waiter waiter
        orders_waiter=Orderdish.all.joins({:order => :table},:dish).select("orderdishes.*,orderdishes.id as id, dishes.*, dishes.speciality_id as speciality_id, orders.*, orders.created_at as order_created, tables.*, tables.waiter_id as waiter_id").where("orderdishes.state = ?", "preparated").order("order_created ASC")
        return orders_waiter
        
    end
end
