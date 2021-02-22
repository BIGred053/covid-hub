class CreateAdministrationSites < ActiveRecord::Migration[6.0]
  def change
    create_table :administration_sites do |t|
      t.string :site_name
      t.references :region

      t.string :site_address_street_1
      t.string :site_address_street_2
      t.string :site_address_city
      t.string :site_address_state
      t.string :site_address_zip

      t.string :site_phone_number
      t.string :site_fax_number

      t.string :site_website

      t.integer :current_doses
      
      t.timestamps
    end
  end
end
