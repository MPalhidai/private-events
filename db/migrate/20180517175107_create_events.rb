class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :location
      t.string :description
      t.date :date

      t.timestamps
    end
  end
end
