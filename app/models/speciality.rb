class Speciality < ApplicationRecord
  has_many :dishes
  has_many :chefs
end
