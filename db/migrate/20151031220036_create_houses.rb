class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.integer :house_type_id
      t.text    :address, null: false
      t.integer :sqft, default: 0
      t.integer :units, default: 1, null: false
      t.integer :detached_space, default: 0, null: false

      t.timestamps null: false
    end
  end
end
