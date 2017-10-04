class Dish < ApplicationRecord
  belongs_to :speciality
  has_one   :orderdish
  has_many  :comments
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
