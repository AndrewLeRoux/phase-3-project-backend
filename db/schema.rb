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

ActiveRecord::Schema.define(version: 2022_03_27_215735) do

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.string "activity_type"
    t.integer "participants"
    t.float "price"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "activity_id"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.boolean "education"
    t.boolean "recreational"
    t.boolean "social"
    t.boolean "diy"
    t.boolean "charity"
    t.boolean "cooking"
    t.boolean "relaxation"
    t.boolean "music"
    t.boolean "busywork"
  end

end
