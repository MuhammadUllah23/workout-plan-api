class ExerciseSerializer < ActiveModel::Serializer
    attributes :id, :name, :target, :sets, :reps
    belongs_to :workout
  end