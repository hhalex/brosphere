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

ActiveRecord::Schema.define(version: 20160630153733) do

  create_table "fermentables", force: :cascade do |t|
    t.string   "name"
    t.integer  "version"
    t.string   "type"
    t.string   "origin"
    t.string   "supplier"
    t.float    "amount"
    t.float    "yield"
    t.float    "color"
    t.boolean  "add_after_boil"
    t.text     "notes"
    t.float    "display_amount"
    t.float    "inventory"
    t.float    "coarse_fine_diff"
    t.float    "moisture"
    t.float    "diastatic_power"
    t.float    "protein"
    t.float    "max_in_batch"
    t.boolean  "recommend_mash"
    t.float    "IBU_gal_per_lb"
    t.float    "potential"
    t.string   "display_color"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "hops", force: :cascade do |t|
    t.string   "name"
    t.integer  "version"
    t.string   "origin"
    t.float    "alpha"
    t.float    "amount"
    t.string   "use"
    t.float    "time"
    t.string   "notes"
    t.string   "type"
    t.string   "form"
    t.float    "beta"
    t.float    "hsi"
    t.float    "display_amount"
    t.float    "inventory"
    t.string   "display_time"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
