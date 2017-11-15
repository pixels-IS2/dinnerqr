class Table < ApplicationRecord
    belongs_to :waiter
    has_many :orders
    dragonfly_accessor :qrCode
    validates :number, presence: true,  length: { in: 1..2 }, numericality: { only_integer: true }
    validates :sector, presence: true, length: { in: 1..40 }
    def self.count_sell_by_waiter
        sell =Table.joins(:orders).group(:waiter_id).count

        return sell
    end
    def self.max_sell_by_waiter
        sell =Table.joins(:orders).group(:waiter_id).count
        b=sell.select {|x,i| i == sell.values.max }

        return b
    end
end
