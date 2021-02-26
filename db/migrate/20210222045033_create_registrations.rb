class CreateRegistrations < ActiveRecord::Migration[6.0]
  def change
    create_table :registrations do |t|
      t.references :registration_form, index: true, foreign_key: true, null: false
      t.timestamps
    end
  end
end
