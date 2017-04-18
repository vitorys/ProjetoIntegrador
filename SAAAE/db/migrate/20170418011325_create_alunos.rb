class CreateAlunos < ActiveRecord::Migration[5.0]
  def change
    create_table :alunos do |t|
      t.string :aluno_curso
      t.float :aluno_frequencia
      t.float :aluno_coeficiente
      t.date :aluno_data_ingresso
      t.belongs_to :pessoa, foreign_key: true

      t.timestamps
    end
  end
end
