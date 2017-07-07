class CreateEstatisticas < ActiveRecord::Migration[5.0]
  def change
    create_table :estatisticas do |t|

      t.timestamps
    end
  end
end
