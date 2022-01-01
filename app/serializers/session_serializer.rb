class SessionSerializer < ActiveModel::Serializer
  attributes :id, :sets, :reps, :dropset
  has_one :workout_id
  has_one :exercise_id
end
