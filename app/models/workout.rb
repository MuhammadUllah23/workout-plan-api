class Workout < ApplicationRecord
    has_many :exercises

    validates :title, presence: true
    validates :focus, presence: true
   
end
