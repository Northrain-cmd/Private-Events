class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.datetime :start_date
      t.string :location
      t.string :finish_date
      t.integer :price
      t.references :user, index: { unique: true }, foreign_key: true
      t.timestamps
    end
  end
end
