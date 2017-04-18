class CreateFuncionarios < ActiveRecord::Migration[5.0]
  def change
    create_table :funcionarios do |t|
      t.string :funcionario_area
      t.integer :funcionario_permissao
      t.belongs_to :pessoa, foreign_key: true

      t.timestamps
    end
  end
end
