class CreateLogCars < ActiveRecord::Migration
  def change
    create_table :log_cars do |t|
      t.string :desc
      t.integer :owner_id
      t.integer :car_id
      t.integer :entry_id

      t.timestamps
    end
  end
end
