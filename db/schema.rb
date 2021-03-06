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

ActiveRecord::Schema.define(version: 20161205185442) do

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sisterings", force: :cascade do |t|
    t.integer  "initial_sister_id"
    t.integer  "receiving_sister_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["initial_sister_id", "receiving_sister_id"], name: "index_sisterings_on_initial_sister_id_and_receiving_sister_id", unique: true
    t.index ["initial_sister_id"], name: "index_sisterings_on_initial_sister_id"
    t.index ["receiving_sister_id"], name: "index_sisterings_on_receiving_sister_id"
  end

end
