class CreatePessoas < ActiveRecord::Migration[5.0]
  def change
    create_table :pessoas do |t|
      t.string :pessoa_nome
      t.string :pessoa_endereco
      t.string :pessoa_cidade
      t.string :pessoa_estado
      t.string :pessoa_cep
      t.string :pessoa_email
      t.references :documento, foreign_key: true

      t.timestamps
    end
  end
end
