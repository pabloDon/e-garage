class AddIconToOwner < ActiveRecord::Migration
  def self.up
      add_attachment :garages, :avatar
    end

    def self.down
      remove_attachment :garages, :avatar
    end
end
