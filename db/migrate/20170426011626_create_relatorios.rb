class CreateRelatorios < ActiveRecord::Migration[5.0]
  def change
    create_table :relatorios do |t|
      t.date :relatorio_data
      t.references :aluno, foreign_key: true
      t.references :funcionario, foreign_key: true

      t.timestamps
    end
  end
end
