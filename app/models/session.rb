class Session < ApplicationRecord
  belongs_to :workout_id
  belongs_to :exercise_id
end
