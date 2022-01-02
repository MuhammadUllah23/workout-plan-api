class RemoveSetFromExercise < ActiveRecord::Migration[6.1]
  def change
    remove_column :exercises, :set, :integer
  end
end
