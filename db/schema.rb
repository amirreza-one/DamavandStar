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

ActiveRecord::Schema.define(version: 20140531130718) do

  create_table "brands", force: true do |t|
    t.string   "name"
    t.string   "country"
    t.text     "summary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patterns", force: true do |t|
    t.integer  "brand_id"
    t.text     "summary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "patterns", ["brand_id"], name: "index_patterns_on_brand_id", using: :btree

  create_table "tires", force: true do |t|
    t.integer  "brand_id",   null: false
    t.string   "size",       null: false
    t.string   "tire_type"
    t.integer  "pattern_id", null: false
    t.integer  "year"
    t.integer  "week"
    t.text     "summary"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tires", ["brand_id"], name: "index_tires_on_brand_id", using: :btree
  add_index "tires", ["pattern_id"], name: "index_tires_on_pattern_id", using: :btree

end
