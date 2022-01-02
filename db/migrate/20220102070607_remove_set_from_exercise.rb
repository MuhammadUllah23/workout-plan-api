class RemoveSetFromExercise < ActiveRecord::Migration[6.1]
  def change
    remove_column :exercises, :sets, :integer
  end
end
