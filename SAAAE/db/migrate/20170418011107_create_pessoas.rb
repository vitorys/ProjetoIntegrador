class CreatePessoas < ActiveRecord::Migration[5.0]
  def change
    create_table :pessoas do |t|
      t.string :pessoa_nome
      t.string :pessoa_documento

      t.timestamps
    end
  end
end
