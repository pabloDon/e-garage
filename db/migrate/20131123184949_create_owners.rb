class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :mobile
      t.string :address

      t.timestamps
    end
  end
end
