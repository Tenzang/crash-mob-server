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

ActiveRecord::Schema.define(version: 2022_05_01_232925) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abilities", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
  create_table "abilities_characters", force: :cascade do |t|
    t.integer "character_id"
    t.integer "ability_id"
=======
  create_table "ability_characters", force: :cascade do |t|
    t.integer "character_id"
    t.integer "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "character_skills", force: :cascade do |t|
    t.integer "character"
    t.integer "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
>>>>>>> c3170e446668909850906cc009a950e9603b1448
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
  end

  create_table "characters_skills", force: :cascade do |t|
    t.integer "character_id"
    t.integer "skill_id"
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
