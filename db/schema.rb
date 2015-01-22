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

ActiveRecord::Schema.define(version: 20150122101348) do

  create_table "artworks", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "path"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "colors", force: :cascade do |t|
    t.string   "description"
    t.string   "code"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "mods", force: :cascade do |t|
    t.integer  "shape_id"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "path"
  end

  create_table "printjobs", force: :cascade do |t|
    t.string   "name"
    t.integer  "shape_id"
    t.integer  "mod_id"
    t.integer  "color_id"
    t.integer  "size_id"
    t.integer  "artwork_id"
    t.boolean  "diamond"
    t.boolean  "name_under"
    t.boolean  "name_behind"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "note"
    t.boolean  "ready"
    t.boolean  "archived"
  end

  create_table "shapes", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sizes", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
