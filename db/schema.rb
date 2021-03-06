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

ActiveRecord::Schema.define(version: 20191121181049) do

  create_table "championships", force: :cascade do |t|
    t.string   "nome"
    t.string   "local"
    t.integer  "champteam_id"
    t.string   "premiacao"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "champteams", force: :cascade do |t|
    t.integer  "team_id"
    t.integer  "championship_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "player_roles", force: :cascade do |t|
    t.string   "player_id"
    t.string   "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "playerroles", force: :cascade do |t|
    t.integer  "player_id"
    t.integer  "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "nome"
    t.string   "sobrenome"
    t.string   "nickname"
    t.string   "elo"
    t.integer  "divisao"
    t.integer  "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date     "datanasc"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "nome"
    t.string   "sigla"
    t.string   "instituicao"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "champteam_id"
  end

end
