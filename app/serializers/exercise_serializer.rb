class ExerciseSerializer < ActiveModel::Serializer
    attributes :id, :name, :target
    belongs_to :workout
  end