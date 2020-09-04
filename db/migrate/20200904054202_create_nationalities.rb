class CreateNationalities < ActiveRecord::Migration[6.0]
  def change
    create_table :nationalities do |t|

      t.timestamps
    end
  end
end
