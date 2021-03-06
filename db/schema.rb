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

ActiveRecord::Schema.define(:version => 20130624075743) do

  create_table "backgrounds", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "img_url"
    t.integer  "scene_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.boolean  "proto"
  end

  add_index "backgrounds", ["name"], :name => "index_backgrounds_on_name"

  create_table "backgrounds_items", :id => false, :force => true do |t|
    t.integer "background_id"
    t.integer "item_id"
  end

  create_table "characters", :force => true do |t|
    t.string   "name"
    t.string   "img_url"
    t.integer  "x_pos"
    t.integer  "y_pos"
    t.integer  "game_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "background_id"
  end

  create_table "characters_conversations_tables", :id => false, :force => true do |t|
    t.integer "character_id"
    t.integer "conversation_id"
  end

  create_table "characters_scenes_tables", :id => false, :force => true do |t|
    t.integer "character_id"
    t.integer "scene_id"
  end

  create_table "conversations", :force => true do |t|
    t.string   "name"
    t.integer  "background_id"
    t.integer  "character_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "dialogues", :force => true do |t|
    t.text     "statement"
    t.integer  "character_id"
    t.integer  "conversation_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "games", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "current_session"
    t.integer  "current_bg"
  end

  create_table "inventories", :force => true do |t|
    t.integer  "character_id"
    t.integer  "user_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "items", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "img_url"
    t.integer  "x_pos"
    t.integer  "y_pos"
    t.integer  "inventory_id"
    t.integer  "scene_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.boolean  "proto"
  end

  create_table "scenes", :force => true do |t|
    t.string   "name"
    t.integer  "game_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
