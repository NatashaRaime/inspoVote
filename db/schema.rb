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

ActiveRecord::Schema.define(version: 2018_05_01_080132) do

  create_table "candidates", primary_key: "candidateId", force: :cascade do |t|
    t.integer "raceId"
    t.integer "votes"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["candidateId"], name: "index_candidates_on_candidateId"
  end

  create_table "districts", primary_key: "districtId", force: :cascade do |t|
    t.integer "stateId"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "elections", primary_key: "electionId", force: :cascade do |t|
    t.integer "districtId"
    t.datetime "electionDate"
    t.string "title"
    t.boolean "completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["districtId"], name: "index_elections_on_districtId"
    t.index ["electionId"], name: "index_elections_on_electionId"
  end

  create_table "races", primary_key: "raceId",force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["raceId"], name: "index_races_on_raceId"
  end

  create_table "states",primary_key: "stateId", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["stateId"], name: "index_states_on_stateId"
  end

  create_table "voters", primary_key: "voterId",force: :cascade do |t|
    t.integer "districtId"
    t.string "name"
    t.string "email"
    t.string "passwordHash"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["districtId"], name: "index_voters_on_districtId"
    t.index ["voterId"], name: "index_voters_on_voterId"
  end

  create_table "elections_races", force: :cascade do |t|
    t.integer "electionId"
    t.integer "raceId"
    t.index ["electionId"], name: "index_election_race_on_electionId"
    t.index ["raceId"], name: "index_election_race_on_raceId"
  end

end
