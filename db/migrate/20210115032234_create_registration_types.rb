class CreateRegistrationTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :registration_types do |t|
      t.string :type_name
      
      t.timestamps
    end
  end
end
