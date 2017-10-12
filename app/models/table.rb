class Table < ApplicationRecord
    belongs_to :waiter
    dragonfly_accessor :qrCode
end
