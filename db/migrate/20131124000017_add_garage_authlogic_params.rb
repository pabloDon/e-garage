class AddGarageAuthlogicParams < ActiveRecord::Migration
  def change
    add_column :garages, :persistence_token, :string
    add_column :garages, :password_salt, :string
    add_column :garages, :crypted_password, :string
  end
end
