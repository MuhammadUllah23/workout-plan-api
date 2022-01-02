class WorkoutSerializer < ActiveModel::Serializer
    attributes :id, :title, :focus
    has_many :sessions
    has_many :workouts, through: :sessions
    belongs_to :user
  end