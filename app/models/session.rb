class Session < ApplicationRecord
  belongs_to :workout
  belongs_to :exercise

  validates :sets, presence: true, numericality: { greater_than: 0}
  validates :reps, presence: true, numericality: { greater_than: 0}
  validates :dropset, presence: true, numericality: { greater_than: 0}
  validates :weight, numericality: { greater_than: 0}
  validates :workout_id, presence: true
  validates :exercise_id, presence: true
end
