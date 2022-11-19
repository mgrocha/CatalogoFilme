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

ActiveRecord::Schema[7.0].define(version: 2022_11_19_205934) do
  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "birthyear"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "castfilms", force: :cascade do |t|
    t.integer "author_id", null: false
    t.integer "film_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_castfilms_on_author_id"
    t.index ["film_id"], name: "index_castfilms_on_film_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "description"
    t.boolean "status"
    t.integer "film_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["film_id"], name: "index_comments_on_film_id"
  end

  create_table "films", force: :cascade do |t|
    t.string "title"
    t.integer "releaseyear"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logs", force: :cascade do |t|
    t.date "date_comment"
    t.integer "comment_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_logs_on_comment_id"
  end

  add_foreign_key "castfilms", "authors"
  add_foreign_key "castfilms", "films"
  add_foreign_key "comments", "films"
  add_foreign_key "logs", "comments"
end
