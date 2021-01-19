class CreateStatesQualifyingHealthConditions < ActiveRecord::Migration[6.0]
  def change
    create_table :states_qualifying_health_conditions do |t|
      t.references :state
      t.references :qualifying_health_condition, index: { name: :index_states_qualifying_health_conditions_on_condition_id }
      t.string :state_qualifier

      t.timestamps
    end
  end
end
