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

ActiveRecord::Schema.define(version: 20150101094653) do

  create_table "groups", force: true do |t|
    t.string   "groupname"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "members_id"
  end

  add_index "groups", ["members_id"], name: "index_groups_on_members_id"

  create_table "groups_members", id: false, force: true do |t|
    t.integer "group_id",   null: false
    t.integer "member_id",  null: false
    t.integer "groups_id"
    t.integer "members_id"
  end

  create_table "members", force: true do |t|
    t.string   "name"
    t.string   "lastname"
    t.date     "dob"
    t.string   "street"
    t.integer  "housenumber"
    t.string   "zipcode"
    t.string   "city"
    t.string   "emailaddress"
    t.integer  "phonenumber"
    t.integer  "member_since"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "groups_id"
  end

  add_index "members", ["groups_id"], name: "index_members_on_groups_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
