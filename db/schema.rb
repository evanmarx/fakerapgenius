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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130509174202) do

  create_table "albums", :force => true do |t|
    t.string   "name"
    t.boolean  "live"
    t.integer  "band_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "albums", ["band_id"], :name => "index_albums_on_band_id"

  create_table "artists", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "bands", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "memberships", :force => true do |t|
    t.integer  "band_id"
    t.integer  "artist_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "memberships", ["artist_id"], :name => "index_memberships_on_artist_id"
  add_index "memberships", ["band_id"], :name => "index_memberships_on_band_id"

  create_table "songs", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tracks", :force => true do |t|
    t.text     "lyrics"
    t.boolean  "bonus"
    t.integer  "album_id"
    t.integer  "song_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "tracks", ["album_id"], :name => "index_tracks_on_album_id"
  add_index "tracks", ["song_id"], :name => "index_tracks_on_song_id"

end
