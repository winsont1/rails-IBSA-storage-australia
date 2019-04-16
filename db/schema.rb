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

ActiveRecord::Schema.define(version: 2019_04_16_140035) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "consignments", force: :cascade do |t|
    t.string "source"
    t.string "destination"
    t.datetime "entry_time"
    t.datetime "exit_time"
    t.string "given_consignment_ID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status", default: "Available"
  end

  create_table "goods", force: :cascade do |t|
    t.string "good_type"
    t.string "name"
    t.bigint "consignment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["consignment_id"], name: "index_goods_on_consignment_id"
  end

  add_foreign_key "goods", "consignments"
end
