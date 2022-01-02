class SessionSerializer < ActiveModel::Serializer
  attributes :id, :sets, :reps, :dropset, :weight, :workout_id, :exercise_id
  belongs_to :workout
  belongs_to :exercise
end
