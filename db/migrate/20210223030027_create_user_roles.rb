class CreateUserRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :user_roles do |t|
      t.string :role_name
      t.timestamps
    end

    add_column :users, :user_role_id, :integer
    add_foreign_key :users, :user_roles
  end
end
