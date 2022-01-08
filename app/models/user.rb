class User < ApplicationRecord
    has_many :workouts

    has_secure_password
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :username, presence: true, uniqueness: { case_sensitive: false}
    
end
