class CreateGarages < ActiveRecord::Migration
  def change
    create_table :garages do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :address
      t.string :cif

      t.timestamps
    end
  end
end
