class CreateRelatorioPsicologicos < ActiveRecord::Migration[5.0]
  def change
    create_table :relatorio_psicologicos do |t|
      t.text :rp_objetivo
      t.text :rp_atendimento
      t.references :relatorio, foreign_key: true

      t.timestamps
    end
  end
end
