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

ActiveRecord::Schema.define(version: 2021_05_18_192340) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "spell_books", force: :cascade do |t|
    t.text "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "spell_spell_books", force: :cascade do |t|
    t.integer "spell_id"
    t.integer "spell_book_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["spell_book_id", "spell_id"], name: "index_spell_spell_books_on_spell_book_id_and_spell_id", unique: true
  end

  create_table "spells", force: :cascade do |t|
    t.text "name"
    t.text "desc"
    t.text "higher_lvl"
    t.text "page"
    t.text "range_distance"
    t.text "components"
    t.text "material"
    t.text "ritual"
    t.text "duration"
    t.text "casting_time"
    t.integer "level"
    t.text "school"
    t.text "dnd_class"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "concentration"
  end

  create_table "users", force: :cascade do |t|
    t.text "username"
    t.text "email"
    t.text "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
