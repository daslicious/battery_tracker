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

ActiveRecord::Schema.define(version: 20150422015409) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "batteries", force: :cascade do |t|
    t.string   "technology"
    t.string   "brand"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "size"
    t.integer  "lookup"
    t.integer  "device_id"
  end

  add_index "batteries", ["device_id"], name: "index_batteries_on_device_id", using: :btree
  add_index "batteries", ["lookup"], name: "index_batteries_on_lookup", using: :btree

  create_table "cycles", force: :cascade do |t|
    t.integer  "battery_id"
    t.integer  "device_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cycles", ["battery_id"], name: "index_cycles_on_battery_id", using: :btree
  add_index "cycles", ["device_id"], name: "index_cycles_on_device_id", using: :btree

  create_table "devices", force: :cascade do |t|
    t.string   "location"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "slots"
    t.string   "name"
    t.string   "remote"
    t.string   "battery_size"
    t.integer  "lookup"
  end

  add_index "devices", ["lookup"], name: "index_devices_on_lookup", using: :btree

  add_foreign_key "batteries", "devices"
  add_foreign_key "cycles", "batteries"
  add_foreign_key "cycles", "devices"
end
