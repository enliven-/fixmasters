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

ActiveRecord::Schema.define(version: 20150726123054) do

  create_table "addresses", force: :cascade do |t|
    t.integer  "address_type"
    t.integer  "property_type"
    t.integer  "entity_id"
    t.string   "line1"
    t.string   "line2"
    t.string   "line3"
    t.string   "line4"
    t.string   "line5"
    t.string   "line6"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "appointments", force: :cascade do |t|
    t.text     "comment"
    t.datetime "time"
    t.integer  "service_provider_id"
    t.integer  "fix_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "areas", force: :cascade do |t|
    t.string   "name"
    t.string   "city"
    t.string   "pin_code"
    t.string   "population_size"
    t.integer  "societies_count"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "assignments", force: :cascade do |t|
    t.integer  "fix_id"
    t.integer  "service_provider_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "phone_alt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "field_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fixes", force: :cascade do |t|
    t.integer  "field_type_id"
    t.text     "comment"
    t.integer  "history_id"
    t.integer  "customer_id"
    t.integer  "status"
    t.integer  "field_type"
    t.integer  "flag_reason"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "histories", force: :cascade do |t|
    t.integer  "fix_id"
    t.text     "events",     default: ""
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "service_providers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "phone_alt"
    t.date     "join_date"
    t.integer  "kyc_profile_id"
    t.integer  "rating_profile_id"
    t.boolean  "active"
    t.boolean  "regular"
    t.boolean  "smartphone"
    t.boolean  "app"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sp_area_sets", force: :cascade do |t|
    t.integer  "service_provider_id"
    t.integer  "area_id"
    t.boolean  "primary"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "sp_field_type_sets", force: :cascade do |t|
    t.integer  "service_provider_id"
    t.integer  "field_type_id"
    t.boolean  "primary"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "sp_skill_sets", force: :cascade do |t|
    t.integer  "service_provider_id"
    t.integer  "skill_id"
    t.boolean  "primary"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

end
