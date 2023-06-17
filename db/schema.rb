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

ActiveRecord::Schema[7.0].define(version: 2023_06_09_212636) do
  create_table "comments", force: :cascade do |t|
    t.string "description"
    t.integer "ticket_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ticket_id"], name: "index_comments_on_ticket_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "incidents", force: :cascade do |t|
    t.date "incident_date"
    t.text "description"
    t.string "summary"
    t.integer "user_normal_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_normal_id"], name: "index_incidents_on_user_normal_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.date "claim_date"
    t.date "due_date"
    t.integer "priority"
    t.integer "status"
    t.integer "incident_id", null: false
    t.integer "user_normal_id", null: false
    t.integer "user_administrator_id", null: false
    t.integer "user_supervisor_id", null: false
    t.integer "user_executive_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["incident_id"], name: "index_tickets_on_incident_id"
    t.index ["user_administrator_id"], name: "index_tickets_on_user_administrator_id"
    t.index ["user_executive_id"], name: "index_tickets_on_user_executive_id"
    t.index ["user_normal_id"], name: "index_tickets_on_user_normal_id"
    t.index ["user_supervisor_id"], name: "index_tickets_on_user_supervisor_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "lastname"
    t.integer "role", default: 0, null: false
    t.integer "admin_id"
    t.integer "supervisor_id"
    t.integer "executive_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "comments", "tickets"
  add_foreign_key "comments", "users"
  add_foreign_key "incidents", "user_normals"
  add_foreign_key "tickets", "incidents"
  add_foreign_key "tickets", "user_administrators"
  add_foreign_key "tickets", "user_executives"
  add_foreign_key "tickets", "user_normals"
  add_foreign_key "tickets", "user_supervisors"
end
