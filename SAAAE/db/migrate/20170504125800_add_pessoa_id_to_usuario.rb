class AddPessoaIdToUsuario < ActiveRecord::Migration[5.0]
  def change
    add_reference :usuarios, :pessoa, foreign_key: true
  end
end
