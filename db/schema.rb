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

ActiveRecord::Schema.define(version: 2022_01_07_122321) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "areas", force: :cascade do |t|
    t.string "name"
    t.string "abbreviation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "covid_cases", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.bigint "dni"
    t.bigint "cellphone"
    t.string "email"
    t.bigint "locality_id"
    t.string "address_street"
    t.integer "address_number"
    t.integer "address_floor"
    t.string "address_department"
    t.string "reason"
    t.date "initial_date"
    t.string "c_firstname"
    t.string "c_lastname"
    t.string "c_dni"
    t.bigint "c_cellphone"
    t.boolean "c_is_cohabiting"
    t.date "c_cohabiting_symptom_date"
    t.string "c_symptom"
    t.date "last_dose_date"
    t.string "institution"
    t.bigint "security_code"
    t.bigint "vaccination_scheme_id"
    t.bigint "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["locality_id"], name: "index_covid_cases_on_locality_id"
    t.index ["state_id"], name: "index_covid_cases_on_state_id"
    t.index ["vaccination_scheme_id"], name: "index_covid_cases_on_vaccination_scheme_id"
  end

  create_table "covid_situations", force: :cascade do |t|
    t.bigint "locality_id"
    t.date "part_date"
    t.integer "ambulatory"
    t.integer "general_room"
    t.integer "uti_with_arm"
    t.integer "uti_without_arm"
    t.integer "new_cases"
    t.integer "new_deceased"
    t.integer "new_recovered"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["locality_id"], name: "index_covid_situations_on_locality_id"
  end

  create_table "localities", force: :cascade do |t|
    t.string "name"
    t.integer "postal_code"
    t.string "short_name"
    t.boolean "enabled"
    t.bigint "area_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_localities_on_area_id"
  end

  create_table "notices", force: :cascade do |t|
    t.string "titulo"
    t.string "subtitulo"
    t.text "cuerpo"
    t.date "fecha"
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "area"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

  create_table "vaccination_schemes", force: :cascade do |t|
    t.string "name"
    t.date "last_dosis"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "covid_cases", "localities"
  add_foreign_key "covid_cases", "states"
  add_foreign_key "covid_cases", "vaccination_schemes"
  add_foreign_key "covid_situations", "localities"
  add_foreign_key "localities", "areas"
end
