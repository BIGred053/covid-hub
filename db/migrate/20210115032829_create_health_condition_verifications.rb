class CreateHealthConditionVerifications < ActiveRecord::Migration[6.0]
  def change
    create_table :health_condition_verifications do |t|
      t.boolean :verified
      t.references :user

      t.timestamps
    end
  end
end
