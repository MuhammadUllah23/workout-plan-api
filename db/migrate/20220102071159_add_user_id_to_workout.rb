class AddUserIdToWorkout < ActiveRecord::Migration[6.1]
  def change
    add_reference :workouts, :user_id, null: false, foreign_key: true
  end
end
