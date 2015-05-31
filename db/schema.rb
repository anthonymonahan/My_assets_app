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

ActiveRecord::Schema.define(version: 20150528171621) do

  create_table "customers", force: true do |t|
    t.string   "CustomerName"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

  create_table "insurances", force: true do |t|
    t.string   "company"
    t.string   "policy_number"
    t.string   "website"
    t.string   "phone"
    t.date     "renewal_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "investments", force: true do |t|
    t.string   "type_of_investment"
    t.decimal  "value"
    t.integer  "customer_id"
    t.integer  "insurance_id"
    t.integer  "receipt_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal "price"
    t.decimal "original_value"
  end

  create_table "loans", force: true do |t|
    t.string   "institution"
    t.string   "account_number"
    t.decimal  "amount"
    t.integer  "customer_id"
    t.integer  "insurance_id"
    t.integer  "receipt_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal "price"
    t.decimal "original_value"
  end

  create_table "miscs", force: true do |t|
    t.string   "name"
    t.string   "serial_no"
    t.decimal  "value"
    t.string   "image"
    t.integer  "customer_id"
    t.integer  "insurance_id"
    t.integer  "receipt_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal "price"
    t.decimal "original_value"
  end

  create_table "money_on_deposits", force: true do |t|
    t.string   "institution"
    t.decimal  "amount"
    t.string   "account_number"
    t.integer  "customer_id"
    t.integer  "insurance_id"
    t.integer  "receipt_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal "price"
    t.decimal "original_value"
  end

  create_table "pensions", force: true do |t|
    t.string   "company"
    t.string   "address"
    t.date     "maturity_date"
    t.decimal  "current_value"
    t.decimal  "expected_value_at_maturity"
    t.integer  "customer_id"
    t.integer  "insurance_id"
    t.integer  "receipt_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal "price"
    t.decimal "original_value"
  end

  create_table "posts", force: true do |t|
    t.string   "symbol"
    t.string   "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "properties", force: true do |t|
    t.string   "address"
    t.decimal  "current_value"
    t.integer  "customer_id"
    t.integer  "insurance_id"
    t.integer  "receipt_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal "price"
    t.decimal "original_value"
  end

  create_table "receipts", force: true do |t|
    t.text     "details"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "customer_id"
  end

  create_table "shares", force: true do |t|
    t.text    "name_of_share"
    t.text    "symbol"
    t.integer "customer_id"
    t.integer "insurance_id"
    t.integer "receipt_id"
    t.text    "created_at"
    t.text    "updated_at"
    t.decimal "price"
    t.decimal "original_value"
    t.integer "post_id"
  end

# Could not dump table "vehicles" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

end
