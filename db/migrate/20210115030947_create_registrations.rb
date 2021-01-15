class CreateRegistrations < ActiveRecord::Migration[6.0]
  def change
    create_table :registrations do |t|
      t.references :registration_type

      t.references :region

      t.string :patient_first_name
      t.string :patient_last_name

      t.string :patient_address_street_1
      t.string :patient_address_street_2
      t.string :patient_address_city
      t.string :patient_address_state
      t.string :patient_address_zip
      
      t.string :patient_dob
      t.references :dob_verification

      t.string :provider_name
      t.string :provider_address_street_1
      t.string :provider_address_street_2
      t.string :provider_address_city
      t.string :provider_address_state
      t.string :provider_address_zip
      t.string :provider_phone_number

      t.references :qualifying_health_condition
      t.references :health_condition_verification

      t.string :contact_email
      t.string :contact_phone
      t.string :preferred_contact_method

      t.boolean :hipaa_consented
      t.string :signature

      t.boolean :transportation_assistance_needed

      t.timestamps
    end
  end
end
