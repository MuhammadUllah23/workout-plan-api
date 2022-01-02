class ExerciseSerializer < ActiveModel::Serializer
    attributes :id, :name, :target
    has_many :sessions
    has_many :workouts, through: :sessions
  end