class User < ApplicationRecord
# Users can only be created with a secure password, email and username. | Frontend should reflect that something is missing.
    has_secure_password

    validates :email, presence: true
    validates :password, presence: true
    validates :username, presence: true, uniqueness: true
end
