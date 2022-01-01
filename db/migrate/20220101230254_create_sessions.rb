class CreateSessions < ActiveRecord::Migration[6.1]
  def change
    create_table :sessions do |t|
      t.integer :sets
      t.integer :reps
      t.integer :dropset
      t.integer :weight
      t.belongs_to :workout_id, null: false, foreign_key: true
      t.belongs_to :exercise_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
