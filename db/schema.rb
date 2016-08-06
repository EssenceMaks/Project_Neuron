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

ActiveRecord::Schema.define(version: 20160806193954) do

  create_table "additional_educations", force: :cascade do |t|
    t.text     "academy"
    t.integer  "resume_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "additional_educations", ["resume_id"], name: "index_additional_educations_on_resume_id"

  create_table "artcomments", force: :cascade do |t|
    t.text     "artcontent"
    t.integer  "article_id"
    t.integer  "soul_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "artcomments", ["article_id"], name: "index_artcomments_on_article_id"
  add_index "artcomments", ["soul_id"], name: "index_artcomments_on_soul_id"
  add_index "artcomments", ["user_id"], name: "index_artcomments_on_user_id"

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "url"
    t.integer  "articlecategory_id"
    t.integer  "soul_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "imgarticle_file_name"
    t.string   "imgarticle_content_type"
    t.integer  "imgarticle_file_size"
    t.datetime "imgarticle_updated_at"
  end

  add_index "articles", ["soul_id"], name: "index_articles_on_soul_id"

  create_table "educations", force: :cascade do |t|
    t.text     "college"
    t.integer  "resume_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "educations", ["resume_id"], name: "index_educations_on_resume_id"

  create_table "experiencelists", force: :cascade do |t|
    t.text     "exp_mark"
    t.integer  "experience_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "experiencelists", ["experience_id"], name: "index_experiencelists_on_experience_id"

  create_table "experiences", force: :cascade do |t|
    t.date     "startdate"
    t.string   "datecomment"
    t.date     "enddate"
    t.string   "title"
    t.text     "description"
    t.string   "workplaceurl"
    t.integer  "soul_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "experiences", ["soul_id"], name: "index_experiences_on_soul_id"

  create_table "hobbies", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "url"
    t.integer  "hobbiescategory_id"
    t.integer  "soul_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "imghobby_file_name"
    t.string   "imghobby_content_type"
    t.integer  "imghobby_file_size"
    t.datetime "imghobby_updated_at"
  end

  add_index "hobbies", ["soul_id"], name: "index_hobbies_on_soul_id"

  create_table "hobbylists", force: :cascade do |t|
    t.text     "hob_mark"
    t.integer  "hobby_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "hobbylists", ["hobby_id"], name: "index_hobbylists_on_hobby_id"

  create_table "hobcomments", force: :cascade do |t|
    t.text     "hobcontent"
    t.integer  "hobby_id"
    t.integer  "soul_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "hobcomments", ["hobby_id"], name: "index_hobcomments_on_hobby_id"
  add_index "hobcomments", ["soul_id"], name: "index_hobcomments_on_soul_id"
  add_index "hobcomments", ["user_id"], name: "index_hobcomments_on_user_id"

  create_table "interested_ins", force: :cascade do |t|
    t.string   "futureskill"
    t.integer  "resume_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "interested_ins", ["resume_id"], name: "index_interested_ins_on_resume_id"

  create_table "my_skills", force: :cascade do |t|
    t.string   "skill"
    t.integer  "resume_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "my_skills", ["resume_id"], name: "index_my_skills_on_resume_id"

  create_table "projcomments", force: :cascade do |t|
    t.text     "projcontent"
    t.integer  "project_id"
    t.integer  "soul_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "projcomments", ["project_id"], name: "index_projcomments_on_project_id"
  add_index "projcomments", ["soul_id"], name: "index_projcomments_on_soul_id"
  add_index "projcomments", ["user_id"], name: "index_projcomments_on_user_id"

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "url"
    t.string   "team"
    t.string   "client"
    t.integer  "soul_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "imgproject_file_name"
    t.string   "imgproject_content_type"
    t.integer  "imgproject_file_size"
    t.datetime "imgproject_updated_at"
  end

  add_index "projects", ["soul_id"], name: "index_projects_on_soul_id"

  create_table "projectteams", force: :cascade do |t|
    t.string   "team"
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "projectteams", ["project_id"], name: "index_projectteams_on_project_id"

  create_table "purpcomments", force: :cascade do |t|
    t.text     "purpcontent"
    t.integer  "purpose_id"
    t.integer  "soul_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "purpcomments", ["purpose_id"], name: "index_purpcomments_on_purpose_id"
  add_index "purpcomments", ["soul_id"], name: "index_purpcomments_on_soul_id"
  add_index "purpcomments", ["user_id"], name: "index_purpcomments_on_user_id"

  create_table "purposes", force: :cascade do |t|
    t.string   "purport"
    t.text     "description"
    t.string   "url"
    t.integer  "soul_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "imgpurpose_file_name"
    t.string   "imgpurpose_content_type"
    t.integer  "imgpurpose_file_size"
    t.datetime "imgpurpose_updated_at"
  end

  add_index "purposes", ["soul_id"], name: "index_purposes_on_soul_id"

  create_table "quotations", force: :cascade do |t|
    t.string   "author"
    t.text     "proverb"
    t.text     "description"
    t.string   "datecomment"
    t.date     "created"
    t.integer  "soul_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "quotations", ["soul_id"], name: "index_quotations_on_soul_id"

  create_table "quotycomments", force: :cascade do |t|
    t.text     "quotycontent"
    t.integer  "quotation_id"
    t.integer  "soul_id"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "quotycomments", ["quotation_id"], name: "index_quotycomments_on_quotation_id"
  add_index "quotycomments", ["soul_id"], name: "index_quotycomments_on_soul_id"
  add_index "quotycomments", ["user_id"], name: "index_quotycomments_on_user_id"

  create_table "reasons", force: :cascade do |t|
    t.text     "reason"
    t.integer  "resume_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reasons", ["resume_id"], name: "index_reasons_on_resume_id"

  create_table "resumes", force: :cascade do |t|
    t.string   "suitname"
    t.text     "suitdescription"
    t.string   "workmail"
    t.boolean  "onlineswitch"
    t.integer  "suitcategory_id"
    t.integer  "soul_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "imgresume_file_name"
    t.string   "imgresume_content_type"
    t.integer  "imgresume_file_size"
    t.datetime "imgresume_updated_at"
  end

  add_index "resumes", ["soul_id"], name: "index_resumes_on_soul_id"

  create_table "souls", force: :cascade do |t|
    t.string   "name",                 default: "name"
    t.string   "surname",              default: "surname"
    t.string   "nickname"
    t.date     "born",                 default: '2016-08-06'
    t.string   "city"
    t.string   "mob_number"
    t.string   "facebook"
    t.string   "github"
    t.string   "linkid"
    t.string   "skype"
    t.text     "history"
    t.integer  "user_id"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.string   "imgsoul_file_name"
    t.string   "imgsoul_content_type"
    t.integer  "imgsoul_file_size"
    t.datetime "imgsoul_updated_at"
  end

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

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "wishcomments", force: :cascade do |t|
    t.text     "wishcontent"
    t.integer  "wish_id"
    t.integer  "soul_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "wishcomments", ["soul_id"], name: "index_wishcomments_on_soul_id"
  add_index "wishcomments", ["user_id"], name: "index_wishcomments_on_user_id"
  add_index "wishcomments", ["wish_id"], name: "index_wishcomments_on_wish_id"

  create_table "wishes", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "url"
    t.integer  "wishescategory_id"
    t.integer  "soul_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "imgwish_file_name"
    t.string   "imgwish_content_type"
    t.integer  "imgwish_file_size"
    t.datetime "imgwish_updated_at"
  end

  add_index "wishes", ["soul_id"], name: "index_wishes_on_soul_id"

  create_table "workobjectives", force: :cascade do |t|
    t.text     "objective"
    t.integer  "resume_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "workobjectives", ["resume_id"], name: "index_workobjectives_on_resume_id"

end
