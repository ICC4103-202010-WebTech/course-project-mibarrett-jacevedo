# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_04_210927) do

  create_table "comments", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "event_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "message"
    t.index ["event_id"], name: "index_comments_on_event_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "event_guests", force: :cascade do |t|
    t.integer "event_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_event_guests_on_event_id"
    t.index ["user_id"], name: "index_event_guests_on_user_id"
  end

  create_table "event_options", force: :cascade do |t|
    t.integer "event_id", null: false
    t.datetime "day"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_event_options_on_event_id"
  end

  create_table "event_organizations", force: :cascade do |t|
    t.integer "event_id", null: false
    t.integer "organization_id", null: false
    t.integer "priv_or_pub"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_event_organizations_on_event_id"
    t.index ["organization_id"], name: "index_event_organizations_on_organization_id"
  end

  create_table "event_votes", force: :cascade do |t|
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "event_option_id"
    t.index ["event_option_id"], name: "index_event_votes_on_event_option_id"
    t.index ["user_id"], name: "index_event_votes_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "description"
    t.string "location"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "mailboxes", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_mailboxes_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.integer "user_id", null: false
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "mailbox_id"
    t.index ["mailbox_id"], name: "index_messages_on_mailbox_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "organization_users", force: :cascade do |t|
    t.integer "organization_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["organization_id"], name: "index_organization_users_on_organization_id"
    t.index ["user_id"], name: "index_organization_users_on_user_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "description"
    t.index ["user_id"], name: "index_organizations_on_user_id"
  end

  create_table "replies", force: :cascade do |t|
    t.integer "user_id"
    t.integer "comment_id"
    t.string "message"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["comment_id"], name: "index_replies_on_comment_id"
    t.index ["user_id"], name: "index_replies_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.integer "role"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password"
    t.string "full_name"
    t.string "biography"
  end

  add_foreign_key "comments", "events"
  add_foreign_key "comments", "users"
  add_foreign_key "event_guests", "events"
  add_foreign_key "event_guests", "users"
  add_foreign_key "event_options", "events"
  add_foreign_key "event_organizations", "events"
  add_foreign_key "event_organizations", "organizations"
  add_foreign_key "event_votes", "event_options"
  add_foreign_key "event_votes", "users"
  add_foreign_key "events", "users"
  add_foreign_key "mailboxes", "users"
  add_foreign_key "messages", "mailboxes"
  add_foreign_key "messages", "users"
end
