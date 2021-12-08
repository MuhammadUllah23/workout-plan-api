class ExerciseSerializer < ActiveModel::Serializer
    attributes :id, :name, :target
    has_many :sessions
  end