class CreateRegistrationForms < ActiveRecord::Migration[6.0]
  def change
    create_table :registration_forms do |t|
      t.references :region_id, index: true, foreign_key: true, null: false
      t.string :name
      t.boolean :active
      t.timestamps
    end
  end
end
