class CreateHistoryRecords < ActiveRecord::Migration
  def change
    create_table :history_records do |t|
      t.text :comment
      t.integer :car_id

      t.timestamps
    end
  end
end
