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

ActiveRecord::Schema.define(version: 20160630163235) do

  create_table "additional_educations", force: :cascade do |t|
    t.text     "academy"
    t.integer  "suit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "additional_educations", ["suit_id"], name: "index_additional_educations_on_suit_id"

  create_table "educations", force: :cascade do |t|
    t.text     "college"
    t.integer  "suit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "educations", ["suit_id"], name: "index_educations_on_suit_id"

  create_table "interested_ins", force: :cascade do |t|
    t.string   "futureskill"
    t.integer  "suit_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "interested_ins", ["suit_id"], name: "index_interested_ins_on_suit_id"

  create_table "my_skills", force: :cascade do |t|
    t.string   "skill"
    t.integer  "suit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "my_skills", ["suit_id"], name: "index_my_skills_on_suit_id"

  create_table "reasons", force: :cascade do |t|
    t.text     "motivation"
    t.integer  "suit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reasons", ["suit_id"], name: "index_reasons_on_suit_id"

  create_table "suits", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

end
