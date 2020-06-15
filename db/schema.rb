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

ActiveRecord::Schema.define(version: 2020_06_15_145735) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bestiaries", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "height"
    t.string "description"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "level_id"
    t.bigint "habitat_bestiary_id"
    t.bigint "rarity_bestiary_id"
    t.bigint "user_id"
    t.bigint "pet_id"
    t.string "check"
    t.index ["habitat_bestiary_id"], name: "index_bestiaries_on_habitat_bestiary_id"
    t.index ["level_id"], name: "index_bestiaries_on_level_id"
    t.index ["pet_id"], name: "index_bestiaries_on_pet_id"
    t.index ["rarity_bestiary_id"], name: "index_bestiaries_on_rarity_bestiary_id"
    t.index ["user_id"], name: "index_bestiaries_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "color"
  end

  create_table "habitat_bestiaries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "color"
  end

  create_table "habitat_herbaria", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "color"
  end

  create_table "herbaria", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "location"
    t.string "height"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "habitat_herbarium_id"
    t.bigint "rarity_herbarium_id"
    t.bigint "category_id"
    t.bigint "season_id"
    t.bigint "user_id"
    t.string "check"
    t.index ["category_id"], name: "index_herbaria_on_category_id"
    t.index ["habitat_herbarium_id"], name: "index_herbaria_on_habitat_herbarium_id"
    t.index ["rarity_herbarium_id"], name: "index_herbaria_on_rarity_herbarium_id"
    t.index ["season_id"], name: "index_herbaria_on_season_id"
    t.index ["user_id"], name: "index_herbaria_on_user_id"
  end

  create_table "levels", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "color"
  end

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rarity_bestiaries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "color"
  end

  create_table "rarity_herbaria", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "color"
  end

  create_table "seasons", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "color"
  end

  create_table "users", force: :cascade do |t|
    t.string "pseudo"
    t.string "code"
    t.string "description"
    t.string "character"
    t.string "img_profile"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "rank"
  end

  add_foreign_key "bestiaries", "habitat_bestiaries"
  add_foreign_key "bestiaries", "levels"
  add_foreign_key "bestiaries", "pets"
  add_foreign_key "bestiaries", "rarity_bestiaries"
  add_foreign_key "bestiaries", "users"
  add_foreign_key "herbaria", "categories"
  add_foreign_key "herbaria", "habitat_herbaria"
  add_foreign_key "herbaria", "rarity_herbaria"
  add_foreign_key "herbaria", "seasons"
  add_foreign_key "herbaria", "users"
end
