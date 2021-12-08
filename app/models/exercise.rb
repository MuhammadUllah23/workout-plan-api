class Exercise < ApplicationRecord
  has_many :sessions
  belongs_to :workout
end
