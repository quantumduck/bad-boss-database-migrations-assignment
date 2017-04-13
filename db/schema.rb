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

ActiveRecord::Schema.define(version: 20170413162802) do

  create_table "dietary_restrictions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "illnesses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medications", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parts", force: :cascade do |t|
    t.string  "name"
    t.string  "manufacturer"
    t.decimal "cost"
    t.integer "quantity"
  end

  create_table "party_guests", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "dietary_restriction_id"
    t.decimal  "salary"
    t.integer  "number_of_kids"
    t.integer  "vulnerability_id"
    t.integer  "illness_id"
    t.integer  "medication_id"
    t.integer  "voting_preference_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["dietary_restriction_id"], name: "index_party_guests_on_dietary_restriction_id"
    t.index ["illness_id"], name: "index_party_guests_on_illness_id"
    t.index ["medication_id"], name: "index_party_guests_on_medication_id"
    t.index ["voting_preference_id"], name: "index_party_guests_on_voting_preference_id"
    t.index ["vulnerability_id"], name: "index_party_guests_on_vulnerability_id"
  end

  create_table "voting_preferences", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vulnerabilities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
