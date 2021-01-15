class CreateQualifyingHealthConditions < ActiveRecord::Migration[6.0]
  def change
    create_table :qualifying_health_conditions do |t|
      t.string :description

      t.timestamps
    end
  end
end
