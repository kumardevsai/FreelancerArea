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

ActiveRecord::Schema.define(version: 20170910175605) do

  create_table "admins", force: :cascade do |t|
    t.string   "account"
    t.string   "password"
    t.string   "Email_account"
    t.string   "Email_password"
    t.string   "Email_host"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "documents", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.string   "string"
    t.string   "#<ActiveRecord::ConnectionAdapters::TableDefinition:0x007f98dca8a800>"
  end

  create_table "freelance_documents", force: :cascade do |t|
    t.string   "title"
    t.text     "file_url"
    t.string   "description"
    t.text     "image_url"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "service_location"
    t.integer  "service_content"
    t.string   "contact"
    t.string   "owner_email"
  end

  create_table "proposals", force: :cascade do |t|
    t.string   "customer"
    t.string   "description"
    t.string   "tools"
    t.decimal  "estimated_hours"
    t.decimal  "hourly_rate"
    t.integer  "days_to_complete"
    t.string   "client_email"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "provide_tool"
    t.string   "location"
    t.integer  "service_content"
    t.string   "owner_email"
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider",               default: "email", null: false
    t.string   "uid",                    default: "",      null: false
    t.string   "encrypted_password",     default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "name"
    t.string   "nickname"
    t.string   "image"
    t.string   "email"
    t.text     "tokens"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

end
