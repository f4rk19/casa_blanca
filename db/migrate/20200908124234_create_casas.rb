class CreateCasas < ActiveRecord::Migration[6.0]
  def change
    create_table :casas do |t|
      t.string :name, null: false
      t.text :information
      t.text :inportant_information
      t.text :detail
      t.text :location
      t.text :cancell
      t.timestamps
    end
  end
end
