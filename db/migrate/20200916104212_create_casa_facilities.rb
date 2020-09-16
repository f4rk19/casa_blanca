class CreateCasaFacilities < ActiveRecord::Migration[6.0]
  def change
    create_table :casa_facilities do |t|

      t.timestamps
    end
  end
end
