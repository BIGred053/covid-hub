class CreateVerifications < ActiveRecord::Migration[6.0]
  def change
    create_table :verifications do |t|
      t.references :registration, index: true, foreign_key: true, null: false
      t.references :registration_data, index: true, foreign_key: true, null: false
      t.boolean :approved
      t.string :verification_method
      t.text :verification_media_filepath
      t.timestamps
    end
  end
end
