class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.integer :maker_id
      t.integer :modelo_id
      t.integer :year
      t.string :color
      t.integer :mileage

      t.timestamps
    end
  end
end
