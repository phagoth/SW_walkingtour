class CreateHouseTypes < ActiveRecord::Migration
  def change
    create_table :house_types do |t|
      t.string :codename, null: false
      t.string :fullname, null: false
      t.string :picture
      t.decimal :price, precision: 10, scale: 2

      t.timestamps null: false
    end
  end
end
