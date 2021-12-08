class DropSessionsTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :sessions
  end
end
