class CreateRegistrationData < ActiveRecord::Migration[6.0]
  def change
    create_table :registration_data do |t|
      t.references :registration, index: true, foreign_key: true, null: false
      t.references :question, index: true, foreign_key: true, null: false
      t.string :value
      t.timestamps
    end
  end
end
