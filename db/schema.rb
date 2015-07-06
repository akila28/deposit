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

ActiveRecord::Schema.define(version: 20150706113958) do

  create_table "customers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "date_of_birth"
    t.string   "sex"
    t.text     "address"
    t.string   "city"
    t.string   "state"
    t.integer  "pincode"
    t.text     "PAN"
    t.string   "status"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "code"
    t.string   "photo"
  end

  create_table "dailyproducts", force: :cascade do |t|
    t.date     "from_date"
    t.date     "to_date"
    t.integer  "no_of_days"
    t.float    "balance"
    t.float    "rate_of_interest"
    t.float    "interest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "savingsdeposit_id"
  end

  create_table "folios", force: :cascade do |t|
    t.datetime "folio_allocation_date"
    t.integer  "no_of_shares"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "customer_id"
    t.string   "folio_number"
  end

  create_table "savingsdeposits", force: :cascade do |t|
    t.date     "opened_on"
    t.string   "account_type"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "customer_id"
    t.integer  "current_balance"
  end

  create_table "savingsdeposittransactions", force: :cascade do |t|
    t.date     "transaction_date"
    t.string   "status"
    t.string   "transaction_mode"
    t.string   "transaction_type"
    t.string   "particulars"
    t.string   "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "savingsdeposit_id"
    t.integer  "transaction_amount"
    t.string   "bank"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "Address"
    t.string   "mobile_number"
    t.string   "role"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
