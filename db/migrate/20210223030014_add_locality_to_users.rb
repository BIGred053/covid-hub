class AddLocalityToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :locality_id, :bigint
    add_foreign_key :users, :localities
  end
end
