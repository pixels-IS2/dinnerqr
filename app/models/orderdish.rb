class Orderdish < ApplicationRecord
    belongs_to  :order
    has_one     :dish
end
