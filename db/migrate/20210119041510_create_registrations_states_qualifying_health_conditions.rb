class CreateRegistrationsStatesQualifyingHealthConditions < ActiveRecord::Migration[6.0]
  def change
    create_table :registrations_states_qualifying_health_conditions do |t|
      t.references :registration, index: { name: :index_reg_qualifying_health_conditions_on_registation_id }
      t.references :states_qualifying_health_condition, index: { name: :index_reg_qualifying_health_conditions_on_condition_id }

      t.timestamps
    end
  end
end
