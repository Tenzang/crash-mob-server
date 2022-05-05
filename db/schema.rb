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

ActiveRecord::Schema.define(version: 2022_05_04_222208) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abilities", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "abilities_characters", force: :cascade do |t|
    t.integer "character_id"
    t.integer "ability_id"
  end

  create_table "characters", force: :cascade do |t|
    t.integer "user_id"
    t.text "name"
    t.text "role"
    t.integer "level"
    t.text "race"
    t.integer "hitpoints"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "image"
    t.integer "hit_dice"
    t.integer "dSaveSucc"
    t.integer "dSaveFail"
    t.text "speed"
    t.text "languages"
    t.boolean "inspiration"
    t.integer "xp"
    t.text "equipment"
    t.integer "tempHP"
    t.integer "currency_id"
    t.text "ideals"
    t.text "bonds"
    t.text "flaws"
  end

  create_table "characters_skills", force: :cascade do |t|
    t.integer "character_id"
    t.integer "skill_id"
  end

  create_table "currencies", force: :cascade do |t|
    t.integer "cp", default: 0
    t.integer "sp", default: 0
    t.integer "gp", default: 0
    t.integer "ep", default: 0
    t.integer "pp", default: 0
  end

  create_table "scores", force: :cascade do |t|
    t.integer "character_id"
    t.integer "strength"
    t.integer "dexterity"
    t.integer "constitution"
    t.integer "intelligence"
    t.integer "wisdom"
    t.integer "charisma"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "email"
    t.text "password_digest"
    t.text "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
