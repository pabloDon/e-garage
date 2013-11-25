class AddPlateAndOwnerToCars < ActiveRecord::Migration
  def change
    add_column :cars, :plate, :string
    add_column :cars, :owner_id, :string
  end
end
