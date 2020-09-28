class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :room_name
      t.integer :room_type
      t.integer :room_bathroom
      t.integer :room_grade
      t.integer :capacity
      t.text :content
      t.timestamps
    end
  end
end
