class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.integer :category_id
      t.string :codename, null: false
      t.string :fullname, null: false
      t.string :picture
      t.decimal :price, scale: 2

      t.timestamps null: false

    end
    add_index :options, :category_id
  end
end
