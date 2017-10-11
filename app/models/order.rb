class Order < ApplicationRecord
    belongs_to :table
    belongs_to :client
    has_many   :orderdishes
    has_many	:dishes, :through => :orderdishes

end
