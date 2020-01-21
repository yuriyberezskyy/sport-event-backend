class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :location
      t.date :date
      t.string :time
      t.string :img
      t.integer :headcount
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
