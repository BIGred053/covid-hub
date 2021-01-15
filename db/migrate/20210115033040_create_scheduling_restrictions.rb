class CreateSchedulingRestrictions < ActiveRecord::Migration[6.0]
  def change
    create_table :scheduling_restrictions do |t|
      t.references :registration
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
