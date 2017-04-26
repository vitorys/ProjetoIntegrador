class CreateRelatorioGerals < ActiveRecord::Migration[5.0]
  def change
    create_table :relatorio_gerals do |t|
      t.text :rg_objetivo
      t.text :rg_atendimento
      t.references :relatorio, foreign_key: true

      t.timestamps
    end
  end
end
