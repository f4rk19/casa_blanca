class CreateCasaFacilities < ActiveRecord::Migration[6.0]
  def change
    create_table :casa_facilities do |t|
      t.references :casa, foreign_key: true
      t.references :facility, foreign_key: true
      t.timestamps
    end
  end
end
