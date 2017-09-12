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

ActiveRecord::Schema.define(version: 20170912200148) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "channels", force: :cascade do |t|
    t.string   "channel_name"
    t.datetime "last_fetch"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "playlists", force: :cascade do |t|
    t.string "name"
    t.string "videos"
  end

  create_table "videos", force: :cascade do |t|
    t.integer  "channel_id",          null: false
    t.string   "title",               null: false
    t.string   "yt_video_identifier", null: false
    t.time     "release_date",        null: false
    t.time     "video_length"
    t.integer  "view_count"
    t.integer  "like_count"
    t.integer  "dislike_count"
    t.text     "metadata"
    t.boolean  "in_playlists?"
    t.string   "playlists"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "videos", ["channel_id"], name: "index_videos_on_channel_id", using: :btree

end
