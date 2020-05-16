# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_15_124132) do

  create_table "achieve_rates", force: :cascade do |t|
    t.integer "user_id"
    t.integer "verb_name"
    t.float "date_rate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "detail_plans", force: :cascade do |t|
    t.integer "verb_id", null: false
    t.integer "plan_allot_id", null: false
    t.datetime "begin_term"
    t.datetime "end_term"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.integer "plan_allot_id"
    t.integer "term_num"
    t.string "behavior", default: "", null: false
    t.boolean "checked", default: false, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "plan_allots", force: :cascade do |t|
    t.integer "verb_id", null: false
    t.float "allot"
    t.datetime "term"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "real_allots", force: :cascade do |t|
    t.integer "action_id", null: false
    t.float "allot"
    t.datetime "term"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rewards", force: :cascade do |t|
    t.integer "plan_allot_id"
    t.string "profit"
    t.string "penalty"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email", default: "", null: false
    t.text "image_id"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
    t.index ["email"], name: "index_users_on_email", unique: true, where: "deleted_at IS NULL"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "verbs", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "name", null: false
    t.boolean "selected", default: false, null: false
    t.boolean "important", default: false, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
