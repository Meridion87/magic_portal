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

ActiveRecord::Schema.define(version: 2018_10_05_234444) do

  create_table "buys", force: :cascade do |t|
    t.integer "users_id"
    t.date "buydate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_buys_on_users_id"
  end

  create_table "cards", force: :cascade do |t|
    t.string "cardname"
    t.string "cardtext"
    t.string "cardtype"
    t.string "cardset"
    t.string "cardrarity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "cardphoto"
    t.string "cardsubtype"
    t.string "cardmanacost"
    t.string "cardcolors"
  end

  create_table "publications", force: :cascade do |t|
    t.integer "card_id"
    t.integer "buys_id"
    t.integer "userid"
    t.float "cardprice"
    t.string "divisa"
    t.integer "cardquantity"
    t.boolean "selled"
    t.integer "mpid"
    t.text "commentary"
    t.date "pubdate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["buys_id"], name: "index_publications_on_buys_id"
    t.index ["card_id"], name: "index_publications_on_card_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nombreusuario"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
