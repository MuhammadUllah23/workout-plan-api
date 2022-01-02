class Exercise < ApplicationRecord
  has_many :sessions
  has_many :workouts, through: :sessions 

  # validates :name :target :workout_id :sets :reps, presence: true
  validates :name, presence: true
  validates :target, presence: true
  validates :workout_id, presence: true
  validates :sets, presence: true
  validates :reps, presence: true
end
