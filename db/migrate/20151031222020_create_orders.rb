class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :house_id
      t.decimal :total, precision: 10, scale: 2
      t.integer :status, default: 0

      t.timestamps null: false
    end
    add_index :orders, :user_id
  end
end
