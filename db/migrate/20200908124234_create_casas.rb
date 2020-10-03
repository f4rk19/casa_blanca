class CreateCasas < ActiveRecord::Migration[6.0]
  def change
    create_table :casas do |t|
      t.string :name, null: false
      t.text :information
      t.text :important_information
      t.text :detail
      t.text :location
      t.text :cancel
      t.text :description
      t.text :policy
      t.time :check_in
      t.time :check_out
      t.float :latitude
      t.float :longitude
      t.references :user
      t.references :shared_room
      t.references :private_room
      t.timestamps
    end
  end
end