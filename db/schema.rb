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

ActiveRecord::Schema.define(version: 20170906142420) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "challenges", force: :cascade do |t|
    t.bigint "league_id"
    t.integer "sender_id"
    t.integer "reciever_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["league_id"], name: "index_challenges_on_league_id"
  end

  create_table "leagues", force: :cascade do |t|
    t.string "title"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "created_by"
    t.string "club"
  end

  create_table "leagues_users", id: false, force: :cascade do |t|
    t.bigint "league_id", null: false
    t.bigint "user_id", null: false
  end

  create_table "matches", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "league_id"
    t.text "score"
    t.boolean "played"
    t.integer "player_one_change"
    t.integer "player_two_change"
    t.integer "player_one_score"
    t.integer "player_two_score"
    t.text "player_one_rank_change"
    t.text "player_two_rank_change"
    t.integer "winner_id"
  end

  create_table "matches_users", id: false, force: :cascade do |t|
    t.bigint "match_id", null: false
    t.bigint "user_id", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.bigint "league_id"
    t.integer "sender_id"
    t.integer "reciever_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["league_id"], name: "index_requests_on_league_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.text "image"
    t.string "password_digest"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "ranking"
    t.integer "matches_won"
  end

  add_foreign_key "challenges", "leagues"
  add_foreign_key "requests", "leagues"
end
