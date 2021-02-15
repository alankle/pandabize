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

ActiveRecord::Schema.define(version: 2021_02_12_145316) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bikes", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "line_orders", force: :cascade do |t|
    t.bigint "bike_id"
    t.bigint "option_id"
    t.bigint "value_id"
    t.integer "gty"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bike_id", "option_id", "value_id"], name: "index_line_orders_on_bike_id_and_option_id_and_value_id", unique: true
  end

  create_table "option_availables", force: :cascade do |t|
    t.bigint "bike_id"
    t.bigint "option_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bike_id", "option_id"], name: "index_option_availables_on_bike_id_and_option_id", unique: true
  end

  create_table "options", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "value_availables", force: :cascade do |t|
    t.bigint "optionAvailable_id"
    t.bigint "value_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["optionAvailable_id", "value_id"], name: "index_value_availables_on_optionAvailable_id_and_value_id"
  end

  create_table "values", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "line_orders", "\"values\"", column: "value_id"
  add_foreign_key "line_orders", "bikes"
  add_foreign_key "line_orders", "options"
  add_foreign_key "option_availables", "bikes"
  add_foreign_key "option_availables", "options"
  add_foreign_key "value_availables", "\"values\"", column: "value_id"
  add_foreign_key "value_availables", "option_availables", column: "optionAvailable_id"
end
