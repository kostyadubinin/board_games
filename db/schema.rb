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

ActiveRecord::Schema.define(version: 20141030195043) do

  create_table "games", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "players_min"
    t.integer  "players_max"
    t.integer  "age"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "playing_time_min"
    t.integer  "playing_time_max"
    t.datetime "published_at"
    t.string   "website"
    t.string   "bgg_link"
    t.string   "wikipedia_link"
  end

  create_table "pictures", force: true do |t|
    t.string   "image"
    t.integer  "game_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pictures", ["game_id"], name: "index_pictures_on_game_id"

end
