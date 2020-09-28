class CreateCasas < ActiveRecord::Migration[6.0]
  def change
    create_table :casas do |t|
      t.string :name, null: false
      t.text :information
      t.text :important_information
      t.text :detail
      t.text :location
      t.text :cancell
      t.text :description
      t.float :latitude
      t.float :longitude
      t.references :user
      t.timestamps
    end
  end
end