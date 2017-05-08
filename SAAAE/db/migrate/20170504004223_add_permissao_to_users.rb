class AddPermissaoToUsers < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :permissao, :integer, :default => 0
  end
end
