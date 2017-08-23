class RemoverPermissao < ActiveRecord::Migration[5.0]
  def change
  	remove_column :funcionarios, :funcionario_permissao
  end
end
