class Workout < ApplicationRecord
    has_many :exercises
    has_many :sessions, through: :exercises
end
