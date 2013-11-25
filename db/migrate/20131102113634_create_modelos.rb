class CreateModelos < ActiveRecord::Migration
  def change
    create_table :modelos do |t|
      t.integer :maker_id
      t.string :model

      t.timestamps
    end
  end
end
