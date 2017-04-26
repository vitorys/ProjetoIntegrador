class CreateDocumentos < ActiveRecord::Migration[5.0]
  def change
    create_table :documentos do |t|
      t.string :doc_rg
      t.string :doc_cpf
      t.references :pessoa, foreign_key: true

      t.timestamps
    end
  end
end
