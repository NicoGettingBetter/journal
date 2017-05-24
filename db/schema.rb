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

ActiveRecord::Schema.define(version: 20161024203046) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "admins", id: :uuid, default: -> { "uuid_generate_v4()" }, force: :cascade do |t|
    t.uuid     "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_admins_on_user_id", using: :btree
  end

  create_table "comments", id: false, force: :cascade do |t|
    t.uuid    "student_id",      null: false
    t.uuid    "page_id",         null: false
    t.string  "student_comment", null: false
    t.date    "date_of_lesson",  null: false
    t.integer "attendance",      null: false
    t.index ["date_of_lesson", "page_id", "student_id"], name: "index_comments_on_date_of_lesson_and_page_id_and_student_id", unique: true, using: :btree
    t.index ["page_id"], name: "index_comments_on_page_id", using: :btree
    t.index ["student_id"], name: "index_comments_on_student_id", using: :btree
  end

  create_table "group_pages", id: false, force: :cascade do |t|
    t.uuid "group_id", null: false
    t.uuid "page_id",  null: false
    t.index ["group_id"], name: "index_group_pages_on_group_id", using: :btree
    t.index ["page_id"], name: "index_group_pages_on_page_id", using: :btree
  end

  create_table "groups", id: :uuid, default: -> { "uuid_generate_v4()" }, force: :cascade do |t|
    t.string   "faculty",    null: false
    t.string   "number",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pages", id: :uuid, default: -> { "uuid_generate_v4()" }, force: :cascade do |t|
    t.uuid     "teacher_user_id", null: false
    t.uuid     "subject_id",      null: false
    t.string   "kind_of_lesson",  null: false
    t.string   "comment",         null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["subject_id"], name: "index_pages_on_subject_id", using: :btree
    t.index ["teacher_user_id"], name: "index_pages_on_teacher_user_id", using: :btree
  end

  create_table "punched_cards", id: :uuid, default: -> { "uuid_generate_v4()" }, force: :cascade do |t|
    t.uuid     "subject_group_id", null: false
    t.string   "type_of_controll", null: false
    t.integer  "max_mark",         null: false
    t.date     "deadline",         null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["subject_group_id"], name: "index_punched_cards_on_subject_group_id", using: :btree
  end

  create_table "student_groups", id: false, force: :cascade do |t|
    t.uuid   "student_id", null: false
    t.uuid   "group_id",   null: false
    t.string "year",       null: false
    t.index ["group_id"], name: "index_student_groups_on_group_id", using: :btree
    t.index ["student_id"], name: "index_student_groups_on_student_id", using: :btree
  end

  create_table "student_punched_cards", id: false, force: :cascade do |t|
    t.uuid    "punched_card_id", null: false
    t.uuid    "student_id",      null: false
    t.date    "pass_date",       null: false
    t.integer "mark",            null: false
    t.index ["punched_card_id"], name: "index_student_punched_cards_on_punched_card_id", using: :btree
    t.index ["student_id"], name: "index_student_punched_cards_on_student_id", using: :btree
  end

  create_table "students", id: :uuid, default: -> { "uuid_generate_v4()" }, force: :cascade do |t|
    t.string   "record_book_number", null: false
    t.string   "name",               null: false
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "subject_groups", id: :uuid, default: -> { "uuid_generate_v4()" }, force: :cascade do |t|
    t.uuid   "subject_id", null: false
    t.uuid   "group_id",   null: false
    t.string "year",       null: false
    t.index ["group_id"], name: "index_subject_groups_on_group_id", using: :btree
    t.index ["subject_id"], name: "index_subject_groups_on_subject_id", using: :btree
  end

  create_table "subjects", id: :uuid, default: -> { "uuid_generate_v4()" }, force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teacher_users", id: :uuid, default: -> { "uuid_generate_v4()" }, force: :cascade do |t|
    t.uuid     "teacher_id", null: false
    t.uuid     "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teacher_id"], name: "index_teacher_users_on_teacher_id", using: :btree
    t.index ["user_id"], name: "index_teacher_users_on_user_id", using: :btree
  end

  create_table "teachers", id: :uuid, default: -> { "uuid_generate_v4()" }, force: :cascade do |t|
    t.string   "department", null: false
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", id: :uuid, default: -> { "uuid_generate_v4()" }, force: :cascade do |t|
    t.string   "provider",               default: "email", null: false
    t.string   "uid",                    default: "",      null: false
    t.string   "encrypted_password",     default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.string   "email"
    t.string   "login"
    t.json     "tokens"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true, using: :btree
  end

end
