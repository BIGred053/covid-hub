class CreateRegistrationsAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :registrations_appointments do |t|
      t.references :registration_id
      t.references :appointment_id
      t.references :appointment_type
      t.string :vaccine_manufacturer
      t.boolean :patient_vaccinated
      t.timestamps
    end
  end
end
