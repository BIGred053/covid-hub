class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.references :schedule
      t.datetime :start_time
      t.datetime :end_time

      t.boolean :filled

      t.timestamps
    end
  end
end
