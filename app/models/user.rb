class User < ApplicationRecord
    has_many :workouts

    has_secure_password
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true
    validates :username, presence: true, uniqueness: true
    
end
