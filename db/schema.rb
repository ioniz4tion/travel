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

ActiveRecord::Schema.define(version: 20141128035553) do

  create_table "answer_values", force: true do |t|
    t.integer  "score"
    t.integer  "gen_package_id"
    t.integer  "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "answers", force: true do |t|
    t.text     "text"
    t.integer  "score"
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "question_id"
    t.string   "label"
  end

  create_table "gen_attraction_images", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "link"
    t.integer  "gen_attraction_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gen_attractions", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "pricing"
    t.string   "location"
    t.string   "link"
    t.integer  "gen_package_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "image_description"
    t.string   "phone"
    t.string   "website"
    t.string   "hours"
    t.string   "rating"
    t.string   "iframe_id"
    t.string   "button_id"
  end

  create_table "gen_hotel_images", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "link"
    t.integer  "gen_hotel_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gen_hotels", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "pricing"
    t.string   "address"
    t.string   "link"
    t.integer  "gen_package_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "image_description"
  end

  create_table "gen_images", force: true do |t|
    t.string   "link"
    t.string   "name"
    t.text     "description"
    t.integer  "gen_package_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gen_packages", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "code"
    t.text     "description"
    t.string   "image_name"
    t.string   "image_link"
    t.text     "image_description"
  end

  create_table "gen_restaurant_images", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "link"
    t.integer  "gen_restaurant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gen_restaurants", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "pricing"
    t.string   "address"
    t.string   "link"
    t.integer  "gen_package_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "image_description"
  end

  create_table "hol_packages", force: true do |t|
    t.string   "name"
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
