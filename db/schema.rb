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

ActiveRecord::Schema.define(version: 20141215064058) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abouts", force: true do |t|
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.text     "description"
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "bpas", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "copyrights", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.string   "website_url"
    t.text     "iframe_url"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "image_thumb_file_name"
    t.string   "image_thumb_content_type"
    t.integer  "image_thumb_file_size"
    t.datetime "image_thumb_updated_at"
    t.string   "short_url"
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
    t.string   "website_url"
    t.text     "iframe_url"
    t.string   "phone"
    t.string   "website"
    t.string   "hours"
    t.string   "rating"
    t.string   "iframe_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "image_thumb_file_name"
    t.string   "image_thumb_content_type"
    t.integer  "image_thumb_file_size"
    t.datetime "image_thumb_updated_at"
    t.string   "short_url"
  end

  create_table "gen_images", force: true do |t|
    t.string   "link"
    t.string   "name"
    t.text     "description"
    t.integer  "gen_package_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gen_package_paragraphs", force: true do |t|
    t.text     "text"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
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
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "iframe_url"
    t.string   "url_name"
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
    t.string   "website_url"
    t.text     "iframe_url"
    t.string   "phone"
    t.string   "website"
    t.string   "hours"
    t.string   "rating"
    t.string   "iframe_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "image_thumb_file_name"
    t.string   "image_thumb_content_type"
    t.integer  "image_thumb_file_size"
    t.datetime "image_thumb_updated_at"
    t.string   "short_url"
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

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
