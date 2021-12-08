class AddRepsToExercise < ActiveRecord::Migration[6.1]
  def change
    add_column :exercises, :reps, :integer
  end
end
