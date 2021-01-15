class CreateRegions < ActiveRecord::Migration[6.0]
  def change
    create_table :regions do |t|
      t.references :state
      t.string :region_name
      t.timestamps
    end
  end
end
