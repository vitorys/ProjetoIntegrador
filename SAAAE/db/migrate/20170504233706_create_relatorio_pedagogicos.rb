class CreateRelatorioPedagogicos < ActiveRecord::Migration[5.0]
  def change
    create_table :relatorio_pedagogicos do |t|
      t.text :rpe_objetivo
      t.text :rpe_atendimento
      t.references :relatorio, foreign_key: true

      t.timestamps
    end
  end
end
