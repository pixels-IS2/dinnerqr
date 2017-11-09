class Speciality < ApplicationRecord
  has_many :dishes
  has_many :chefs
  validates :name, presence: true, length: { in: 6..40 }
end
