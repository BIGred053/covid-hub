class CreateDobVerificationTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :dob_verification_types do |t|
      t.string :type
      t.timestamps
    end
  end
end
