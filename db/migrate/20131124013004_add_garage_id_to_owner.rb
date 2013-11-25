class AddGarageIdToOwner < ActiveRecord::Migration
  def change
    add_column :owners, :garage_id, :integer
  end
end
