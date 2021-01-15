class CreateDobVerifications < ActiveRecord::Migration[6.0]
  def change
    create_table :dob_verifications do |t|
      t.references :dob_verification_type
      t.string :verifier_value

      t.boolean :verified

      t.timestamps
    end
  end
end
