class RemoveRepFromExercise < ActiveRecord::Migration[6.1]
  def change
    remove_column :exercises, :reps, :integer
  end
end
