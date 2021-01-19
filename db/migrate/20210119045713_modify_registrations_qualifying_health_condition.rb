class ModifyRegistrationsQualifyingHealthCondition < ActiveRecord::Migration[6.0]
  def change
    remove_reference :registrations, :qualifying_health_condition, index: true
    add_column :registrations, :qualifying_health_conditions, :boolean
  end
end
