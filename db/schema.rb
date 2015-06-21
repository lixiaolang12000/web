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

ActiveRecord::Schema.define(version: 20150621164804) do

  create_table "grids", force: :cascade do |t|
    t.integer  "x1"
    t.integer  "x2"
    t.integer  "x3"
    t.integer  "y1"
    t.integer  "y2"
    t.integer  "y3"
    t.integer  "z1"
    t.integer  "z2"
    t.integer  "z3"
    t.datetime "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "operlogs", force: :cascade do |t|
    t.string   "maname"
    t.string   "username"
    t.integer  "coin"
    t.string   "action"
    t.datetime "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tracelogs", force: :cascade do |t|
    t.integer  "gametype"
    t.integer  "pos"
    t.integer  "coin"
    t.datetime "time"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "gameid"
    t.integer  "status"
    t.integer  "userid"
  end

  add_index "tracelogs", ["user_id"], name: "index_tracelogs_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "account"
    t.string   "password"
    t.string   "nickname"
    t.integer  "coin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "level"
  end

end
