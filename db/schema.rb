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

ActiveRecord::Schema.define(version: 2018_07_24_132539) do

  create_table "accounts", force: :cascade do |t|
    t.string "iban"
    t.integer "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_accounts_on_company_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "string"
    t.string "city"
    t.integer "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tag_id"], name: "index_companies_on_tag_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "firs_name"
    t.string "string"
    t.string "last_name"
    t.string "age"
    t.integer "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tag_id"], name: "index_people_on_tag_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "email"
    t.string "string"
    t.string "phone_number"
    t.integer "people_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["people_id"], name: "index_profiles_on_people_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.string "tagable_type"
    t.integer "tagable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tagable_type", "tagable_id"], name: "index_tags_on_tagable_type_and_tagable_id"
  end

end
