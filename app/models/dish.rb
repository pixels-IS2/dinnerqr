class Dish < ApplicationRecord
  belongs_to :speciality
  has_many   :orderdishes
  has_many	:order, :through => :orderdishes
  has_many  :comments
  validates :name, presence: true, length: { in: 1..40 }
  validates :state, presence: true,  length: { in: 1..15 }
  validates :price, presence: true,  length: { in: 4..10 }, numericality: { only_integer: true }
  validates :description, presence: true,  length: { in: 6..200 }
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
   acts_as_votable
end
