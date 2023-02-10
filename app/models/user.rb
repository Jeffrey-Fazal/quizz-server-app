class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable,
  #        :jwt_authenticatable, jwt_revocation_strategy: JWTBlacklist #Denylist

  has_many :questions
  # def on_jwt_dispatch(token, payload)
  # end
  # def jwt_payload
  #   { 'foo' => 'bar' }
  # end  
end
