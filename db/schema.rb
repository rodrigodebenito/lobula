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

ActiveRecord::Schema.define(:version => 20150411221635) do

  create_table "people", :force => true do |t|
    t.string   "name"
    t.text     "summary"
    t.text     "biography"
    t.string   "email"
    t.string   "resume"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "bitmap_file_name"
    t.string   "bitmap_content_type"
    t.integer  "bitmap_file_size"
    t.datetime "bitmap_updated_at"
  end

  create_table "pictures", :force => true do |t|
    t.string   "caption"
    t.string   "credit"
    t.integer  "weight"
    t.integer  "project_id"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.string   "bitmap_file_name"
    t.string   "bitmap_content_type"
    t.integer  "bitmap_file_size"
    t.datetime "bitmap_updated_at"
    t.boolean  "active",              :default => true
    t.string   "href",                :default => ""
  end

  add_index "pictures", ["project_id"], :name => "index_pictures_on_project_id"

  create_table "projects", :force => true do |t|
    t.string   "title"
    t.text     "summary"
    t.text     "description"
    t.string   "client"
    t.string   "credit"
    t.string   "company"
    t.string   "role"
    t.date     "date"
    t.string   "slug"
    t.string   "website_url"
    t.text     "awards"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.string   "bitmap_file_name"
    t.string   "bitmap_content_type"
    t.integer  "bitmap_file_size"
    t.datetime "bitmap_updated_at"
    t.boolean  "active",              :default => true
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end