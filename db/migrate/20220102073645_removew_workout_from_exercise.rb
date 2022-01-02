class RemovewWorkoutFromExercise < ActiveRecord::Migration[6.1]
  def change
    remove_reference :exercises, :workout, null: false, foreign_key: true
  end
end
