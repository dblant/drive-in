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

ActiveRecord::Schema.define(version: 2020_09_14_224838) do

  create_table "appointments", force: :cascade do |t|
    t.string "appointment_date"
    t.boolean "confirmed", default: false
    t.integer "service_level"
    t.text "notes"
    t.boolean "completed", default: false
    t.integer "customer_id"
    t.integer "mechanic_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "car_make"
    t.string "car_model"
    t.integer "car_year"
  end

  create_table "mechanics", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "skills"
    t.text "bio"
  end

end
