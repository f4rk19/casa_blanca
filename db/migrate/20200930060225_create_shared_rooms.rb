class CreateSharedRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :shared_rooms do |t|
      t.string :sharedroom_name
      t.integer :sharedroom_bathroom
      t.integer :sharedroom_grade
      t.integer :sharedcapacity
      t.text :content
      t.references :casa, foreign_key: true
      t.timestamps
    end
  end
end
