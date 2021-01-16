class RemoveRegistrationsScheduleRestrictionsFk < ActiveRecord::Migration[6.0]
  def change
    remove_reference :registrations, :schedule_restriction, index: true, foreign_key: true
  end
end
