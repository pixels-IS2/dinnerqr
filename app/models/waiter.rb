class Waiter < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many  :tables

  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "30x30#" }, :default_url => "/assets/images/:style/deer.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
