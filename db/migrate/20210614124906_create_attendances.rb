class CreateAttendances < ActiveRecord::Migration[6.1]
  def change
    create_table :attendances do |t|
      t.belongs_to :user, index: { unique: true }, foreign_key: true
      t.belongs_to :event, index: { unique: true }, foreign_key: true
      t.timestamps
    end
  end
end
