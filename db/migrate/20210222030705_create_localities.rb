class CreateLocalities < ActiveRecord::Migration[6.0]
  def change
    create_table :localities do |t|
      t.string :name
      t.bigint :parent_locality_id
      t.timestamps
    end
  end
end
