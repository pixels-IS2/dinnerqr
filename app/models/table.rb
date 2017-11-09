class Table < ApplicationRecord
    belongs_to :waiter
    has_many :orders
    dragonfly_accessor :qrCode
end
