class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :owner_id
      t.integer :car_id
      t.integer :garage_id
      t.integer :status_id
      t.text :comments
      t.integer :hours
      t.datetime :departure_date

      t.timestamps
    end
  end
end
