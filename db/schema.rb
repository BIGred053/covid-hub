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

ActiveRecord::Schema.define(version: 2021_02_22_045036) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "administration_sites", force: :cascade do |t|
    t.string "site_name"
    t.bigint "region_id"
    t.string "site_address_street_1"
    t.string "site_address_street_2"
    t.string "site_address_city"
    t.string "site_address_state"
    t.string "site_address_zip"
    t.string "site_phone_number"
    t.string "site_fax_number"
    t.string "site_website"
    t.integer "current_doses"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["region_id"], name: "index_administration_sites_on_region_id"
  end

  create_table "answer_options", force: :cascade do |t|
    t.bigint "question_id", null: false
    t.string "display_text"
    t.string "value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_id"], name: "index_answer_options_on_question_id"
  end

  create_table "appointment_types", force: :cascade do |t|
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "appointments", force: :cascade do |t|
    t.bigint "schedule_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.boolean "filled"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["schedule_id"], name: "index_appointments_on_schedule_id"
  end

  create_table "localities", force: :cascade do |t|
    t.string "name"
    t.bigint "parent_locality_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "question_types", force: :cascade do |t|
    t.string "display_name"
    t.string "associated_tag"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "questions", force: :cascade do |t|
    t.text "prompt"
    t.bigint "question_type_id", null: false
    t.boolean "verification_required"
    t.boolean "verification_preferred"
    t.boolean "required_question"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_type_id"], name: "index_questions_on_question_type_id"
  end

  create_table "registration_consents", force: :cascade do |t|
    t.bigint "registration_id", null: false
    t.boolean "consented"
    t.string "consent_signature"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["registration_id"], name: "index_registration_consents_on_registration_id"
  end

  create_table "registration_data", force: :cascade do |t|
    t.bigint "registration_id", null: false
    t.bigint "question_id", null: false
    t.string "value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_id"], name: "index_registration_data_on_question_id"
    t.index ["registration_id"], name: "index_registration_data_on_registration_id"
  end

  create_table "registration_forms", force: :cascade do |t|
    t.bigint "locality_id", null: false
    t.string "name"
    t.boolean "active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["locality_id"], name: "index_registration_forms_on_locality_id"
  end

  create_table "registration_forms_questions", force: :cascade do |t|
    t.bigint "registration_form_id", null: false
    t.bigint "question_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_id"], name: "index_registration_forms_questions_on_question_id"
    t.index ["registration_form_id"], name: "index_registration_forms_questions_on_registration_form_id"
  end

  create_table "registrations", force: :cascade do |t|
    t.bigint "registration_form_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["registration_form_id"], name: "index_registrations_on_registration_form_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.bigint "administration_site_id"
    t.boolean "active"
    t.boolean "auto_schedule"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["administration_site_id"], name: "index_schedules_on_administration_site_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "verifications", force: :cascade do |t|
    t.bigint "registration_id", null: false
    t.bigint "registration_data_id", null: false
    t.boolean "approved"
    t.string "verification_method"
    t.text "verification_media_filepath"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["registration_data_id"], name: "index_verifications_on_registration_data_id"
    t.index ["registration_id"], name: "index_verifications_on_registration_id"
  end

  add_foreign_key "answer_options", "questions"
  add_foreign_key "questions", "question_types"
  add_foreign_key "registration_consents", "registrations"
  add_foreign_key "registration_data", "questions"
  add_foreign_key "registration_data", "registrations"
  add_foreign_key "registration_forms", "localities"
  add_foreign_key "registration_forms_questions", "questions"
  add_foreign_key "registration_forms_questions", "registration_forms"
  add_foreign_key "registrations", "registration_forms"
  add_foreign_key "verifications", "registration_data", column: "registration_data_id"
  add_foreign_key "verifications", "registrations"
end
