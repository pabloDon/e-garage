class AddDniToOwners < ActiveRecord::Migration
  def change
    add_column :owners, :dni, :string
  end
end
