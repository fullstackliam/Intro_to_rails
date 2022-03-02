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

ActiveRecord::Schema[7.0].define(version: 2022_03_02_225124) do
  create_table "adjective_combos", force: :cascade do |t|
    t.integer "adjectives_id"
    t.integer "combos_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["adjectives_id"], name: "index_adjective_combos_on_adjectives_id"
    t.index ["combos_id"], name: "index_adjective_combos_on_combos_id"
  end

  create_table "adjectives", force: :cascade do |t|
    t.string "word"
    t.text "definition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animal_combos", force: :cascade do |t|
    t.integer "animals_id"
    t.integer "combos_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["animals_id"], name: "index_animal_combos_on_animals_id"
    t.index ["combos_id"], name: "index_animal_combos_on_combos_id"
  end

  create_table "animals", force: :cascade do |t|
    t.string "name"
    t.text "definition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "combos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
