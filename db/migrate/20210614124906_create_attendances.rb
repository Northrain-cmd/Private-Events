class CreateAttendances < ActiveRecord::Migration[6.1]
  def change
    create_table :attendances do |t|
      t.references :user, index: { unique: true }, foreign_key: true
      t.references :event, index: { unique: true }, foreign_key: true
      t.timestamps
    end
  end
end
