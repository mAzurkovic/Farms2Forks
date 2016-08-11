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

ActiveRecord::Schema.define(version: 20160811181519) do

  create_table "listings", force: :cascade do |t|
    t.string   "tool"
    t.decimal  "price"
    t.string   "location"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "user_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "name"
    t.string   "location"
    t.boolean  "is_lender",              default: false
    t.string   "payment_url"
    t.decimal  "rating"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "bio_file_name"
    t.string   "bio_content_type"
    t.integer  "bio_file_size"
    t.datetime "bio_updated_at"
    t.string   "description"
    t.string   "xphoto_file_name"
    t.string   "xphoto_content_type"
    t.integer  "xphoto_file_size"
    t.datetime "xphoto_updated_at"
    t.string   "yphoto_file_name"
    t.string   "yphoto_content_type"
    t.integer  "yphoto_file_size"
    t.datetime "yphoto_updated_at"
    t.string   "zphoto_file_name"
    t.string   "zphoto_content_type"
    t.integer  "zphoto_file_size"
    t.datetime "zphoto_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
