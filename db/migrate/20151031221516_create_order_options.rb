class CreateOrderOptions < ActiveRecord::Migration
  def change
    create_table :order_options do |t|
      t.integer :order_id
      t.integer :option_id
      t.decimal :price

      t.timestamps null: false
    end
    add_index :order_options, :order_id
  end
end
