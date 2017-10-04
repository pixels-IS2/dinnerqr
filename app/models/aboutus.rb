class Aboutus
  
  include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :name, :email, :content, :last_name

  validates :name,
    presence: true

  validates :email,
    presence: true

  validates :content,
    presence: true

end