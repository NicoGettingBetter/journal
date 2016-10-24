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

  create_table "comments", id: false, force: :cascade do |t|
    t.date    "date"
    t.integer "attendance"
    t.string  "student_comment"
    t.integer "page_id"
    t.integer "student_id"
    t.index ["date", "page_id", "student_id"], name: "index_comments_on_date_and_page_id_and_student_id", unique: true, using: :btree
    t.index ["page_id"], name: "index_comments_on_page_id", using: :btree
    t.index ["student_id"], name: "index_comments_on_student_id", using: :btree
  end

  create_table "group_pages", id: false, force: :cascade do |t|
    t.integer "group_id"
    t.integer "page_id"
    t.index ["group_id"], name: "index_group_pages_on_group_id", using: :btree
    t.index ["page_id"], name: "index_group_pages_on_page_id", using: :btree
  end

  create_table "groups", force: :cascade do |t|
    t.string   "number"
    t.string   "faculty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pages", force: :cascade do |t|
    t.string   "kind_of_lesson"
    t.string   "comment"
    t.integer  "user_id"
    t.integer  "subject_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["subject_id"], name: "index_pages_on_subject_id", using: :btree
    t.index ["user_id"], name: "index_pages_on_user_id", using: :btree
  end

  create_table "punched_cards", force: :cascade do |t|
    t.string   "type_of_controll"
    t.integer  "subject_group_id"
    t.date     "deadline"
    t.integer  "max_mark"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["subject_group_id"], name: "index_punched_cards_on_subject_group_id", using: :btree
  end

  create_table "student_groups", id: false, force: :cascade do |t|
    t.integer "student_id"
    t.integer "group_id"
    t.string  "year"
    t.index ["group_id"], name: "index_student_groups_on_group_id", using: :btree
    t.index ["student_id"], name: "index_student_groups_on_student_id", using: :btree
  end

  create_table "student_punched_cards", id: false, force: :cascade do |t|
    t.integer "punched_card_id"
    t.integer "student_id"
    t.date    "date"
    t.integer "mark"
    t.index ["punched_card_id"], name: "index_student_punched_cards_on_punched_card_id", using: :btree
    t.index ["student_id"], name: "index_student_punched_cards_on_student_id", using: :btree
  end

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.string   "record_book_number"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "subject_groups", force: :cascade do |t|
    t.integer "subject_id"
    t.integer "group_id"
    t.string  "year"
    t.index ["group_id"], name: "index_subject_groups_on_group_id", using: :btree
    t.index ["subject_id"], name: "index_subject_groups_on_subject_id", using: :btree
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.string   "department"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "login"
    t.string   "password_digest"
    t.integer  "teacher_id"
    t.json     "tokens"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["teacher_id"], name: "index_users_on_teacher_id", using: :btree
  end

end
