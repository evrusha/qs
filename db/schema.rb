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

ActiveRecord::Schema[7.0].define(version: 2023_06_05_080455) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "transactions", id: false, force: :cascade do |t|
    t.datetime "datetime"
    t.string "code"
    t.string "operation_code"
    t.string "action_code"
    t.string "lpn"
    t.string "box_number"
    t.string "source_zone"
    t.string "source_location"
    t.string "item_number"
    t.string "section_code"
    t.string "destination_zone"
    t.string "destination_location"
    t.string "user_name"
    t.string "detail_number"
    t.string "lpn_destination"
    t.string "batch_number"
    t.string "wh"
    t.string "revision_level"
    t.string "order_number"
    t.string "ei_jda"
    t.string "dimension_code"
    t.string "nomenclature"
    t.string "ei_ast"
    t.float "quantity"
    t.float "weight"
    t.float "volume"
    t.float "length"
    t.float "width"
    t.float "height"
  end

end
