class CreateDobVerifications < ActiveRecord::Migration[6.0]
  def change
    create_table :dob_verifications do |t|
      t.references :registration
      t.references :dob_verification_type
      t.string :verifier_value

      t.boolean :verified

      t.timestamps
    end
  end
end
