class CreateAlunos < ActiveRecord::Migration[5.0]
  def change
    create_table :alunos do |t|
      t.integer :aluno_ra
      t.string :aluno_curso
      t.date :aluno_data_ingresso
      t.integer :aluno_periodo
      t.float :aluno_frequencia
      t.float :aluno_coeficiente
      t.references :pessoa, foreign_key: true

      t.timestamps
    end
  end
end
