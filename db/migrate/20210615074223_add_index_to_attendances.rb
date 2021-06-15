class AddIndexToAttendances < ActiveRecord::Migration[6.1]
  def change
    add_index :attendances, [:user_id, :event_id], unique: true
  end
end
