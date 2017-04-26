class CreateRelatorioAssistenteSocials < ActiveRecord::Migration[5.0]
  def change
    create_table :relatorio_assistente_socials do |t|
      t.text :ras_motivo
      t.text :ras_entrevista
      t.references :relatorio, foreign_key: true

      t.timestamps
    end
  end
end
