# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131124024622) do

  create_table "cars", :force => true do |t|
    t.integer  "maker_id"
    t.integer  "modelo_id"
    t.integer  "year"
    t.string   "color"
    t.integer  "mileage"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "plate"
    t.string   "owner_id"
  end

  create_table "entries", :force => true do |t|
    t.integer  "owner_id"
    t.integer  "car_id"
    t.integer  "garage_id"
    t.integer  "status_id"
    t.text     "comments"
    t.integer  "hours"
    t.datetime "departure_date"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "garage_sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "garage_sessions", ["session_id"], :name => "index_garage_sessions_on_session_id"
  add_index "garage_sessions", ["updated_at"], :name => "index_garage_sessions_on_updated_at"

  create_table "garages", :force => true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "address"
    t.string   "cif"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "persistence_token"
    t.string   "password_salt"
    t.string   "crypted_password"
  end

  create_table "history_records", :force => true do |t|
    t.text     "comment"
    t.integer  "car_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "makers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "modelos", :force => true do |t|
    t.integer  "maker_id"
    t.string   "model"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "owners", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "mobile"
    t.string   "address"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "garage_id"
    t.string   "dni"
  end

end
