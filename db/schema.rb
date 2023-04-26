# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_04_26_140309) do
  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "setup_categories", force: :cascade do |t|
    t.integer "setup_id"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "setups", force: :cascade do |t|
    t.string "car"
    t.text "driver"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "track"
    t.integer "frshk"
    t.string "frpst"
    t.string "frspr"
    t.integer "reshk"
    t.string "repst"
    t.string "respr"
    t.integer "frdiff"
    t.integer "ctrdiff"
    t.integer "rediff"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.boolean "admin", default: false
  end

end
