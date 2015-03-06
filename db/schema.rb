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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150304181207) do

  create_table "items", force: :cascade do |t|
    t.string   "name",                limit: 255
    t.float    "price"
    t.integer  "menu_id"
    t.text     "description"
    t.string   "menu_category",       limit: 255
    t.string   "menu_tag",            limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "category"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "menus", force: :cascade do |t|
    t.string   "meal",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "owner_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string   "restaurant_name"
    t.string   "manager_name"
    t.string   "street_address_1"
    t.string   "street_address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "neighborhood"
    t.string   "phone_number"
    t.string   "cuisine"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name",                   limit: 255
    t.string   "username",               limit: 255
    t.string   "restaurant_name",        limit: 255
    t.string   "cuisine",                limit: 255
    t.string   "phone_number",           limit: 255
    t.string   "street_address_1",       limit: 255
    t.string   "street_address_2",       limit: 255
    t.string   "city",                   limit: 255
    t.string   "state",                  limit: 255
    t.integer  "zip"
    t.string   "neighborhood"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
