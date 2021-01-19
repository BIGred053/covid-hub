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

ActiveRecord::Schema.define(version: 2021_01_19_045713) do

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

  create_table "dob_verification_types", force: :cascade do |t|
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dob_verifications", force: :cascade do |t|
    t.bigint "registration_id"
    t.bigint "dob_verification_type_id"
    t.string "verifier_value"
    t.boolean "verified"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dob_verification_type_id"], name: "index_dob_verifications_on_dob_verification_type_id"
    t.index ["registration_id"], name: "index_dob_verifications_on_registration_id"
  end

  create_table "health_condition_verifications", force: :cascade do |t|
    t.bigint "registration_id"
    t.boolean "verified"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["registration_id"], name: "index_health_condition_verifications_on_registration_id"
    t.index ["user_id"], name: "index_health_condition_verifications_on_user_id"
  end

  create_table "qualifying_health_conditions", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "regions", force: :cascade do |t|
    t.bigint "state_id"
    t.string "region_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["state_id"], name: "index_regions_on_state_id"
  end

  create_table "registration_types", force: :cascade do |t|
    t.string "type_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "registrations", force: :cascade do |t|
    t.bigint "registration_type_id"
    t.bigint "region_id"
    t.string "patient_first_name"
    t.string "patient_last_name"
    t.string "patient_address_street_1"
    t.string "patient_address_street_2"
    t.string "patient_address_city"
    t.string "patient_address_state"
    t.string "patient_address_zip"
    t.string "patient_dob"
    t.string "provider_name"
    t.string "provider_address_street_1"
    t.string "provider_address_street_2"
    t.string "provider_address_city"
    t.string "provider_address_state"
    t.string "provider_address_zip"
    t.string "provider_phone_number"
    t.string "contact_email"
    t.string "contact_phone"
    t.string "preferred_contact_method"
    t.boolean "hipaa_consented"
    t.string "signature"
    t.boolean "transportation_assistance_needed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "qualifying_health_conditions"
    t.index ["region_id"], name: "index_registrations_on_region_id"
    t.index ["registration_type_id"], name: "index_registrations_on_registration_type_id"
  end

  create_table "registrations_appointments", force: :cascade do |t|
    t.bigint "registration_id_id"
    t.bigint "appointment_id_id"
    t.bigint "appointment_type_id"
    t.string "vaccine_manufacturer"
    t.boolean "patient_vaccinated"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["appointment_id_id"], name: "index_registrations_appointments_on_appointment_id_id"
    t.index ["appointment_type_id"], name: "index_registrations_appointments_on_appointment_type_id"
    t.index ["registration_id_id"], name: "index_registrations_appointments_on_registration_id_id"
  end

  create_table "registrations_states_qualifying_health_conditions", force: :cascade do |t|
    t.bigint "registration_id"
    t.bigint "states_qualifying_health_condition_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["registration_id"], name: "index_reg_qualifying_health_conditions_on_registation_id"
    t.index ["states_qualifying_health_condition_id"], name: "index_reg_qualifying_health_conditions_on_condition_id"
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

  create_table "scheduling_restrictions", force: :cascade do |t|
    t.bigint "registration_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["registration_id"], name: "index_scheduling_restrictions_on_registration_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "states_qualifying_health_conditions", force: :cascade do |t|
    t.bigint "state_id"
    t.bigint "qualifying_health_condition_id"
    t.string "state_qualifier"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["qualifying_health_condition_id"], name: "index_states_qualifying_health_conditions_on_condition_id"
    t.index ["state_id"], name: "index_states_qualifying_health_conditions_on_state_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
