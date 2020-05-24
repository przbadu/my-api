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

ActiveRecord::Schema.define(version: 2020_05_24_112831) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "issues_tracker_assignees", force: :cascade do |t|
    t.integer "user_id"
    t.integer "issue_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["issue_id"], name: "index_issues_tracker_assignees_on_issue_id"
    t.index ["user_id"], name: "index_issues_tracker_assignees_on_user_id"
  end

  create_table "issues_tracker_issue_labels", force: :cascade do |t|
    t.integer "label_id"
    t.integer "issue_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["issue_id"], name: "index_issues_tracker_issue_labels_on_issue_id"
    t.index ["label_id"], name: "index_issues_tracker_issue_labels_on_label_id"
  end

  create_table "issues_tracker_issues", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "creator_id"
    t.integer "project_id"
    t.boolean "closed", default: false, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["creator_id"], name: "index_issues_tracker_issues_on_creator_id"
    t.index ["project_id"], name: "index_issues_tracker_issues_on_project_id"
  end

  create_table "issues_tracker_labels", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "color"
    t.integer "project_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_issues_tracker_labels_on_project_id"
  end

  create_table "issues_tracker_projects", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "issues_count", default: 0, null: false
    t.integer "labels_count", default: 0, null: false
    t.index ["user_id"], name: "index_issues_tracker_projects_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "issues_tracker_projects", "users"
end
