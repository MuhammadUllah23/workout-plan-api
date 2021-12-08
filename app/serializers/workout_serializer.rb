class WorkoutSerializer < ActiveModel::Serializer
    attributes :id, :title, :focus
    has_many :exercises
  end