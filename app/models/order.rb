class Order < ApplicationRecord
    belongs_to :tables
    belongs_to :clients
    has_many   :dishorder
end
