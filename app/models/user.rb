class User < ApplicationRecord
enum gender:[:male, :female, :other]
enum identification_type:{TI:1, CC:2, Pasaporte:3}

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
