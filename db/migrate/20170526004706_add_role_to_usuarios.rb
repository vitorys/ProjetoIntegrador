class AddRoleToUsuarios < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :role, :integer, :default => 99
  end
end
