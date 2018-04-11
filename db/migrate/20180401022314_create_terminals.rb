class CreateTerminals < ActiveRecord::Migration[5.2]
  def change
    create_table :terminals do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :telephone
              t.timestamps
    end
  end
end
