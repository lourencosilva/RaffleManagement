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

ActiveRecord::Schema.define(version: 2021_03_29_234044) do

  create_table "kinds", force: :cascade do |t|
    t.string "description"
    t.integer "initial"
    t.integer "step"
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "prizes", force: :cascade do |t|
    t.string "description"
    t.integer "placing"
    t.integer "user_id", null: false
    t.integer "ticket_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ticket_id"], name: "index_prizes_on_ticket_id"
    t.index ["user_id"], name: "index_prizes_on_user_id"
  end

  create_table "raffles", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "probable_draw_at"
    t.datetime "start_sale_at"
    t.datetime "finishes_sale_at"
    t.datetime "drawn_at"
    t.decimal "ticket_value"
    t.integer "user_id", null: false
    t.integer "kind_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["kind_id"], name: "index_raffles_on_kind_id"
    t.index ["user_id"], name: "index_raffles_on_user_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.integer "number"
    t.integer "user_id", null: false
    t.integer "raffle_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["raffle_id"], name: "index_tickets_on_raffle_id"
    t.index ["user_id"], name: "index_tickets_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.text "picture"
    t.boolean "admin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "prizes", "tickets"
  add_foreign_key "prizes", "users"
  add_foreign_key "raffles", "kinds"
  add_foreign_key "raffles", "users"
  add_foreign_key "tickets", "raffles"
  add_foreign_key "tickets", "users"
end
