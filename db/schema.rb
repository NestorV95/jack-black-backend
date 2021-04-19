# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_19_205205) do

  create_table "dealer_hands", force: :cascade do |t|
    t.integer "dealer_id", null: false
    t.integer "game_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dealer_id"], name: "index_dealer_hands_on_dealer_id"
    t.index ["game_id"], name: "index_dealer_hands_on_game_id"
  end

  create_table "dealers", force: :cascade do |t|
    t.string "name"
    t.string "picture"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "games", force: :cascade do |t|
    t.integer "min_bet"
    t.integer "max_bet"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_hands", force: :cascade do |t|
    t.integer "bet"
    t.integer "user_id", null: false
    t.integer "game_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_user_hands_on_game_id"
    t.index ["user_id"], name: "index_user_hands_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.integer "tokens"
    t.string "picture"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "dealer_hands", "dealers"
  add_foreign_key "dealer_hands", "games"
  add_foreign_key "user_hands", "games"
  add_foreign_key "user_hands", "users"
end
