class CreateScheduledAccesses < ActiveRecord::Migration
  def change
    create_table :scheduled_accesses do |t|
      t.integer :order_id
      t.date :scheduled_date
      t.time :scheduled_begin_time
      t.time :sheduled_end_time

      t.timestamps null: false
    end
  end
end
