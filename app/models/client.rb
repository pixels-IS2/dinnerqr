class Client < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :omniauthable,:database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         omniauth_providers: [:facebook,:google_oauth2]
  def self.from_omniauth(auth)
      where(provider: auth.provider, uid: auth.uid).first_or_create do |client|
      client.email = auth.info.email
      client.provider = auth.provider
      client.uid = auth.uid
      client.password = Devise.friendly_token[0,20]
     end
  end
  has_many :orders
  has_many :comments

end
