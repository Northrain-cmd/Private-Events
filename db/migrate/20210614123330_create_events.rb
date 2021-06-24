class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.datetime :start_date
      t.string :location
      t.datetime :finish_date
      t.integer :price
      t.references :organizer, index: true, foreign_key: { to_table: 'users' }
      t.timestamps
    end
  end
end
