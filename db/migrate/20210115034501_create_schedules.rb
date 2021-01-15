class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.references :administration_site
      t.boolean :active
      t.boolean :auto_schedule
      t.datetime :deleted_at
      t.timestamps
    end
  end
end
