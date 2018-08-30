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

ActiveRecord::Schema.define(version: 20180830000852) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.string "common_name"
    t.string "iso_639_1"
    t.string "iso_639_3"
    t.string "iso_639_2t"
    t.string "iso_639_2b"
    t.boolean "is_common"
    t.integer "language_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["common_name"], name: "index_languages_on_common_name"
    t.index ["is_common"], name: "index_languages_on_is_common"
    t.index ["iso_639_1"], name: "index_languages_on_iso_639_1"
    t.index ["iso_639_2b"], name: "index_languages_on_iso_639_2b"
    t.index ["iso_639_2t"], name: "index_languages_on_iso_639_2t"
    t.index ["iso_639_3"], name: "index_languages_on_iso_639_3"
    t.index ["language_type"], name: "index_languages_on_language_type"
    t.index ["name"], name: "index_languages_on_name"
  end

end
