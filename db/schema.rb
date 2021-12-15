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

ActiveRecord::Schema.define(version: 2021_12_15_032408) do

  create_table "folklore_small_categories", force: :cascade do |t|
    t.integer "folklore_id"
    t.integer "small_category_id"
    t.index ["folklore_id"], name: "index_folklore_small_categories_on_folklore_id"
    t.index ["small_category_id"], name: "index_folklore_small_categories_on_small_category_id"
  end

  create_table "folklores", force: :cascade do |t|
    t.string "user_id"
    t.string "tel_number"
    t.string "email"
    t.string "password"
    t.integer "gender"
    t.string "screen_name"
    t.string "user_name"
    t.string "furigana"
    t.string "icon"
    t.date "birthday"
    t.boolean "identity"
    t.string "bio"
  end

  create_table "large_categories", force: :cascade do |t|
    t.string "name"
  end

  create_table "matchings", force: :cascade do |t|
    t.integer "folklore_id"
    t.integer "successor_id"
    t.string "message"
    t.boolean "is_approve"
    t.string "candidate_datetime"
    t.datetime "phone_call_datetime"
    t.index ["folklore_id"], name: "index_matchings_on_folklore_id"
    t.index ["successor_id"], name: "index_matchings_on_successor_id"
  end

  create_table "small_categories", force: :cascade do |t|
    t.integer "large_category_id"
    t.string "name"
    t.index ["large_category_id"], name: "index_small_categories_on_large_category_id"
  end

  create_table "successor_small_categories", force: :cascade do |t|
    t.integer "successor_id"
    t.integer "small_category_id"
    t.index ["small_category_id"], name: "index_successor_small_categories_on_small_category_id"
    t.index ["successor_id"], name: "index_successor_small_categories_on_successor_id"
  end

  create_table "successors", force: :cascade do |t|
    t.string "user_id"
    t.string "tel_number"
    t.string "email"
    t.string "password"
    t.integer "gender"
    t.string "screen_name"
    t.string "user_name"
    t.string "furigana"
    t.string "icon"
    t.date "birthday"
    t.boolean "identity"
    t.string "bio"
  end

end
