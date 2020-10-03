class CreateNationalities < ActiveRecord::Migration[6.0]
  def change
    create_table :nationalities do |t|
      t.string :countryname
    end
  end
end
