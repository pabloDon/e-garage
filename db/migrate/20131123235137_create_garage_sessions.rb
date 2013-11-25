class CreateGarageSessions < ActiveRecord::Migration
  def change
    create_table :garage_sessions do |t|
      t.string :session_id, :null => false
      t.timestamps
    end
    
    add_index :garage_sessions, :session_id
    add_index :garage_sessions, :updated_at
  end
end
