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

ActiveRecord::Schema.define(version: 20161110024403) do

  create_table "actions", force: :cascade do |t|
    t.date     "valid_from"
    t.integer  "code"
    t.text     "reason"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "employee_id"
  end

  create_table "employees", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personal_data", force: :cascade do |t|
    t.date     "valid_from"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "ssn"
    t.integer  "marital_status"
    t.integer  "dependents"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "employee_id"
  end

  create_table "positions", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
