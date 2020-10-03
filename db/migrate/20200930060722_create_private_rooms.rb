class CreatePrivateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :private_rooms do |t|
      t.string :privateroom_name
      t.integer :privateroom_bathroom
      t.integer :privateroom_grade
      t.integer :privatecapacity
      t.text :content
      t.references :casa, foreign_key: true
      t.timestamps
    end
  end
end
