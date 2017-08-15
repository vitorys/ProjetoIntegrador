class CreateAtendimentos < ActiveRecord::Migration[5.0]
  def change
    create_table :atendimentos do |t|
      t.references :aluno, foreign_key: true
      t.string :area
      t.references :funcionario, foreign_key: true

      t.timestamps
    end
  end
end
