class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.datetime :start_date
      t.string :location
      t.datetime :duration
      t.integer :price
      t.belongs_to :user, index: { unique: true }, foreign_key: true
      t.timestamps
    end
  end
end
