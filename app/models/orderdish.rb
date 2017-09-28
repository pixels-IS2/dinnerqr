class Orderdish < ApplicationRecord
    has_one :dishes
    belongs_to:order
end
