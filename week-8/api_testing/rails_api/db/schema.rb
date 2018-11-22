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

ActiveRecord::Schema.define(version: 2018_10_17_152135) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.integer "street_number"
    t.string "street_name"
    t.string "city"
    t.string "country"
    t.string "zip"
    t.integer "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cars", force: :cascade do |t|
    t.string "car_model"
    t.string "car_make"
    t.string "car_year"
    t.string "car_color"
    t.integer "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "dob"
    t.string "job"
    t.string "organisation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.string "animal"
    t.string "origin"
    t.integer "legs"
    t.integer "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "philosophers", force: :cascade do |t|
    t.string "name"
    t.string "nationality"
    t.string "university"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quotes", force: :cascade do |t|
    t.string "quote"
    t.string "philosopher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
