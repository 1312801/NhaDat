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

ActiveRecord::Schema.define(version: 20180104085452) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carts", force: :cascade do |t|
    t.datetime "purchased_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conversations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "author_id"
    t.integer "receiver_id"
    t.index ["author_id"], name: "index_conversations_on_author_id"
    t.index ["receiver_id"], name: "index_conversations_on_receiver_id"
  end

  create_table "houses", force: :cascade do |t|
    t.string "title"
    t.string "diachi"
    t.string "gia"
    t.string "dientich"
    t.string "mota"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_houses_on_user_id"
  end

  create_table "lands", force: :cascade do |t|
    t.string "title"
    t.string "tenduan"
    t.string "tenchudautu"
    t.string "gia"
    t.string "tien"
    t.string "phuong"
    t.string "quan"
    t.string "thanhpho"
    t.string "tinh"
    t.string "dientich"
    t.string "string"
    t.string "diachi"
    t.string "quymo"
    t.integer "sotang"
    t.integer "sophongngu"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.date "datestart"
    t.date "dateend"
    t.index ["user_id"], name: "index_lands_on_user_id"
  end

  create_table "line_items", force: :cascade do |t|
    t.decimal "unit_price"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "land_id"
    t.bigint "cart_id"
    t.index ["cart_id"], name: "index_line_items_on_cart_id"
    t.index ["land_id"], name: "index_line_items_on_land_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user"
    t.string "references"
    t.bigint "conversation_id"
    t.bigint "user_id"
    t.string "picture"
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "order_transactions", force: :cascade do |t|
    t.string "action"
    t.integer "amount"
    t.boolean "success"
    t.string "authorization"
    t.string "message"
    t.text "params"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "payment_id"
    t.index ["payment_id"], name: "index_order_transactions_on_payment_id"
  end

  create_table "payments", force: :cascade do |t|
    t.datetime "expires_at"
    t.datetime "purchased_at"
    t.integer "quantity"
    t.string "status"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "express_token"
    t.string "express_payer_id"
    t.string "firstname"
    t.string "lastname"
    t.string "card_type"
    t.date "card_expire_on"
    t.date "card_expires_on"
    t.bigint "cart_id"
    t.string "ip_address"
    t.index ["cart_id"], name: "index_payments_on_cart_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "address"
    t.string "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "country"
  end

  add_foreign_key "houses", "users"
  add_foreign_key "lands", "users"
  add_foreign_key "line_items", "carts"
  add_foreign_key "line_items", "lands"
  add_foreign_key "messages", "conversations"
  add_foreign_key "messages", "users"
  add_foreign_key "order_transactions", "payments"
  add_foreign_key "payments", "carts"
end
