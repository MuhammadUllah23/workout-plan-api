class Workout < ApplicationRecord
    has_many :sessions
    has_many :exercises, through: :sessions 
    belongs_to :user

    validates :title, presence: true
    validates :focus, presence: true
   
end
