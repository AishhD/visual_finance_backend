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

ActiveRecord::Schema.define(version: 2018_12_12_145544) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "age_options", force: :cascade do |t|
    t.string "age_group"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "city_options", force: :cascade do |t|
    t.string "city_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spending_categories", force: :cascade do |t|
    t.integer "food_non_alcholic_drinks"
    t.integer "alcoholic_drinks_tobacco_narcotics"
    t.integer "clothing_footwear"
    t.integer "household_bills"
    t.integer "reacreation_culture"
    t.integer "education"
    t.integer "resturants_hotels"
    t.integer "transport"
    t.integer "other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "city_option_id"
    t.integer "age_option_id"
  end

  create_table "spending_data", force: :cascade do |t|
    t.integer "food_non_alcholic_drinks"
    t.integer "alcoholic_drinks_tobacco_narcotics"
    t.integer "clothing_footwear"
    t.integer "household_bills"
    t.integer "reacreation_culture"
    t.integer "education"
    t.integer "resturants_hotels"
    t.integer "transport"
    t.integer "other"
    t.integer "user_id"
    t.string "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "target_data", force: :cascade do |t|
    t.integer "food_non_alcholic_drinks"
    t.integer "alcoholic_drinks_tobacco_narcotics"
    t.integer "clothing_footwear"
    t.integer "household_bills"
    t.integer "reacreation_culture"
    t.integer "education"
    t.integer "resturants_hotels"
    t.integer "transport"
    t.integer "other"
    t.integer "user_id"
    t.string "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "age"
    t.string "location"
    t.string "children"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end