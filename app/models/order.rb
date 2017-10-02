class Order < ApplicationRecord
    belongs_to :table
    belongs_to :client
    has_many   :dishorders
end
