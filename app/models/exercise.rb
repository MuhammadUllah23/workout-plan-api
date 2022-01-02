class Exercise < ApplicationRecord
  has_many :sessions
  has_many :workouts, through: :sessions 

  # validates :name :target :workout_id :sets :reps, presence: true
  validates :name, presence: true
  validates :target, presence: true

end
