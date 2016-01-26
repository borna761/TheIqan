# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160126200027) do

  create_table "iqans", force: :cascade do |t|
    t.integer  "number"
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "part"
  end

  create_table "subthemeparagraphs", force: :cascade do |t|
    t.string   "main"
    t.integer  "subtheme_id"
    t.integer  "iqan_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "subthemeparagraphs", ["iqan_id"], name: "index_subthemeparagraphs_on_iqan_id"
  add_index "subthemeparagraphs", ["subtheme_id"], name: "index_subthemeparagraphs_on_subtheme_id"

  create_table "subthemes", force: :cascade do |t|
    t.integer  "number"
    t.text     "subtheme"
    t.integer  "theme_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "subthemes", ["theme_id"], name: "index_subthemes_on_theme_id"

  create_table "themeparagraphs", force: :cascade do |t|
    t.string   "main"
    t.integer  "iqan_id"
    t.integer  "theme_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "themeparagraphs", ["iqan_id"], name: "index_themeparagraphs_on_iqan_id"
  add_index "themeparagraphs", ["theme_id"], name: "index_themeparagraphs_on_theme_id"

  create_table "themes", force: :cascade do |t|
    t.integer  "number"
    t.text     "theme"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
