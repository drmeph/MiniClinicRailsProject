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

ActiveRecord::Schema.define(version: 20161024004527) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "encounters", force: :cascade do |t|
    t.string   "visitnumber", limit: 6, null: false
    t.datetime "admittedat",            null: false
    t.datetime "discharedat"
    t.string   "location"
    t.integer  "room"
    t.integer  "bed"
    t.integer  "patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string  "firstname",  limit: 45, null: false
    t.string  "middlename", limit: 45, null: false
    t.string  "lastname",   limit: 45
    t.integer "weight"
    t.integer "height"
    t.string  "mrn",        limit: 6,  null: false
  end

end
