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

ActiveRecord::Schema.define(version: 20151028040540) do

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "formats", force: :cascade do |t|
    t.integer "type_id"
    t.string  "type1_year"
    t.string  "type1_month"
    t.string  "type1_date"
    t.string  "to_whom"
    t.string  "type1_name"
    t.string  "address"
    t.string  "purpose_01"
    t.string  "purpose_02"
    t.string  "purpose_03"
    t.string  "purpose_04"
    t.string  "purpose_05"
    t.string  "purpose_06"
    t.string  "purpose_07"
    t.string  "purpose_08"
    t.string  "purpose_09"
    t.string  "purpose_10"
    t.string  "purpose_11"
    t.string  "purpose_12"
    t.text    "date_time"
    t.text    "route"
    t.text    "altitude"
    t.text    "characteristic_of_drone"
    t.text    "which_of_exclusion_zone_1"
    t.text    "which_of_exclusion_zone_2"
    t.text    "which_of_exclusion_zone_3"
    t.text    "reason_for_exclusion_zone"
    t.string  "which_of_prohibited_manner_1"
    t.string  "which_of_prohibited_manner_2"
    t.string  "which_of_prohibited_manner_3"
    t.string  "which_of_prohibited_manner_4"
    t.string  "which_of_prohibited_manner_5"
    t.string  "which_of_prohibited_manner_6"
    t.text    "reason_for_prohibited_manner"
    t.text    "function_performance_of_drone"
    t.text    "experience_skill_of_pilot"
    t.text    "measure_for_safety"
    t.text    "others"
    t.text    "maker_of_drone"
    t.text    "model_of_drone"
    t.text    "serial_number"
    t.text    "maximum_takeoff_weight"
  end

  create_table "types", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
