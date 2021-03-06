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

ActiveRecord::Schema.define(version: 2019_05_09_023025) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "devices", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "mac_address"
    t.string "device_type"
    t.boolean "is_furniture", default: false
    t.index ["device_type"], name: "index_devices_on_device_type"
    t.index ["mac_address"], name: "index_devices_on_mac_address"
  end

  create_table "devices_scanners", force: :cascade do |t|
    t.integer "device_id"
    t.integer "scanner_id"
    t.datetime "timestamp"
    t.float "signal_strength"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "timestamp_integer"
    t.index ["device_id"], name: "index_devices_scanners_on_device_id"
    t.index ["scanner_id"], name: "index_devices_scanners_on_scanner_id"
  end

  create_table "refvalues", force: :cascade do |t|
    t.string "day"
    t.float "a_wifi"
    t.float "n_wifi"
    t.float "a_bluetooth"
    t.float "n_bluetooth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scanners", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "device_id"
    t.float "pos_x", default: 0.0
    t.float "pos_y", default: 0.0
    t.string "ip_address"
    t.index ["device_id"], name: "index_scanners_on_device_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.boolean "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
