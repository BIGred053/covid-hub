class CreateRegistrationConsents < ActiveRecord::Migration[6.0]
  def change
    create_table :registration_consents do |t|
      t.references :registration, index: true, foreign_key: true, null: false
      t.boolean :consented
      t.string :consent_signature
      t.timestamps
    end
  end
end
