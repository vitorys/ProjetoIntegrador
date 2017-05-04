class AddPermissaoToUsuarios < ActiveRecord::Migration[5.0]
  def change
  	add_column :usuarios, :permissao, :integer, :default => 0
  end
end
