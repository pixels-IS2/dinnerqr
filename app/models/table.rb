class Table < ApplicationRecord
    belongs_to :waiter
    has_many :orders
    dragonfly_accessor :qrCode
    validates :number, presence: true,  length: { in: 1..2 }, numericality: { only_integer: true }
     validates :sector, presence: true, length: { in: 6..40 }    
end
